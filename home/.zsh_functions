tinify() {
  local quality=85
  local batch=false
  local output=""
  local verbose=false
  
  # Parse options
  while [[ $# -gt 0 ]]; do
    case $1 in
      -q|--quality)
        quality="$2"
        shift 2
        ;;
      -o|--output)
        output="$2"
        shift 2
        ;;
      -b|--batch)
        batch=true
        shift
        ;;
      -v|--verbose)
        verbose=true
        shift
        ;;
      -h|--help)
        echo "Usage: tinify [options] <image(s)>"
        echo "Options:"
        echo "  -q, --quality <1-100>   Quality level (default: 85)"
        echo "  -o, --output <file>     Output filename"
        echo "  -b, --batch             Process all images in current directory"
        echo "  -v, --verbose           Show detailed output"
        echo "  -h, --help              Show this help"
        return 0
        ;;
      *)
        break
        ;;
    esac
  done
  
  # Batch processing
  if [ "$batch" = true ]; then
    local count=0
    echo "Scanning for images in: $(pwd)"
    
    # Enable null_glob for this function only
    setopt local_options null_glob
    
    # Process all image files
    for img in *.{jpg,jpeg,png,JPG,JPEG,PNG,webp,WEBP}; do
      # This check is now redundant with null_glob but kept for safety
      [[ -f "$img" ]] || continue
      
      echo "Processing: $img"
      tinify -q "$quality" ${verbose:+-v} "$img" || echo "Failed to process $img"
      ((count++))
    done
    
    if [ $count -eq 0 ]; then
      echo "No images found in current directory"
    else
      echo "Successfully processed $count images"
    fi
    return 0
  fi
  
  # Single file processing
  if [ -z "$1" ]; then
    echo "Error: No input file specified"
    echo "Use 'tinify -h' for help"
    return 1
  fi
  
  local input="$1"
  
  if [ ! -f "$input" ]; then
    echo "Error: File '$input' not found"
    return 1
  fi
  
  # Get file info
  local filename="${input%.*}"
  local extension="${input##*.}"
  local output_file="${output:-${filename}_compressed.${extension}}"
  
  # Get original size (macOS compatible)
  local original_size=$(stat -f%z "$input" 2>/dev/null || stat -c%s "$input" 2>/dev/null)
  
  # Compression based on format
  case "${extension:l}" in
    jpg|jpeg)
      local q_val=$((10 - quality / 10))
      if [ "$verbose" = true ]; then
        ffmpeg -i "$input" -q:v $q_val "$output_file" -y
      else
        ffmpeg -i "$input" -q:v $q_val "$output_file" -loglevel error -y
      fi
      ;;
    png)
      if [ "$verbose" = true ]; then
        ffmpeg -i "$input" -compression_level 100 "$output_file" -y
      else
        ffmpeg -i "$input" -compression_level 100 "$output_file" -loglevel error -y
      fi
      ;;
    webp)
      if [ "$verbose" = true ]; then
        ffmpeg -i "$input" -quality "$quality" "$output_file" -y
      else
        ffmpeg -i "$input" -quality "$quality" "$output_file" -loglevel error -y
      fi
      ;;
    *)
      echo "Error: Unsupported format '$extension'"
      echo "Supported: jpg, jpeg, png, webp"
      return 1
      ;;
  esac
  
  if [ ! -f "$output_file" ]; then
    echo "Error: Failed to create output file"
    return 1
  fi
  
  # Get compressed size and calculate savings
  local compressed_size=$(stat -f%z "$output_file" 2>/dev/null || stat -c%s "$output_file" 2>/dev/null)
  local saved=$((original_size - compressed_size))
  local percent=$((saved * 100 / original_size))
  
  echo "✓ Compressed: $input → $output_file"
  printf "  Original: %'d bytes\n" $original_size
  printf "  Compressed: %'d bytes\n" $compressed_size
  printf "  Saved: %d%% (%'d bytes)\n" $percent $saved
}

