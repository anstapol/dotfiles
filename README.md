# macOS Setup Automation

This repository contains a script to automate the setup and configuration of macOS. It installs essential software, configures system settings, and applies customizations for Dock, Finder, and Hot Corners.

## Prerequisites

- **Homebrew** must be installed (if not, the script will handle the installation).

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/anstapol/dotfiles.git
   cd dotfiles
   ```

2. **Run the setup script**:

   ```bash
   ./setup.sh
   ```

3. **Restart macOS** to ensure all settings are applied correctly.

## What This Does

- **Installs Homebrew packages** from the `Brewfile`, including:
  - Formulae (command-line tools, libraries).
  - Casks (GUI applications).
  - App Store apps via `mas`.
- **Configures macOS** settings such as:
  - Dock autohide, magnification, and hot corners.
  - Finder settings, including sidebar & view style.
  - Automatically removes old Trash items after 30 days.

### Dotfiles (GNU Stow)

Dotfiles are managed with [GNU Stow](https://www.gnu.org/software/stow/). All config files live in the `home/` package directory, mirroring the home directory structure. Running `stow -t $HOME home` creates symlinks for:

- `~/.zshrc`
- `~/.zsh_plugins.txt`
- `~/.zsh_functions`
- `~/.config/starship.toml`
- `~/.config/ghostty`

To add a new config, place it in `home/` at the same relative path it would have in `~`, then re-run `stow -t $HOME home`.

## Customizations

### Starship Prompt

The Starship prompt is customized to provide a clean and informative right-aligned prompt. The prompt displays the following information:

- **Directory**: Abbreviated fish-style path with distinct styling for repo root vs parent directories.
- **Git Status**: Shows the status of the current Git repository, including stashed, staged, modified, deleted, renamed, untracked, and conflicted files.
- **Git Branch**: Displays the current Git branch.
- **Node.js Version**: Shows the current Node.js version.
- **Command Duration**: Displays the execution time of the last command.

### `tinify` function

A `tinify` shell function is available for image compression using `ffmpeg`. This function can process single images or a batch of images in the current directory.

**Usage**: `tinify [options] <image(s)>`

**Options**:
- `-q, --quality <1-100>`: Quality level (default: 85)
- `-o, --output <file>`: Output filename
- `-b, --batch`: Process all images in current directory
- `-v, --verbose`: Show detailed output
- `-h, --help`: Show this help

## macOS Settings Applied

### Dock Customizations:

- **Autohide**: Enabling hiding the dock automatically & increasing the animation speeds.
- **Magnification**: Magnify Dock icons when hovering over them & setting the exact size.
- **Minimization**: Use the "scale" effect & minimized into application icon.
- **Recent Applications**: Hides the recent applications section in the Dock.

### Finder Customizations:

- Hide External Hard Drives, Internal Hard Drives, and Removable Media on Desktop.
- Enable Finder Sidebar, Path Bar, and Status Bar.
- Set Default Finder View to List View.
- Arrange Finder Items by Name.
- Automatically Remove Old Trash Items after 30 days.

### Hot Corners Customizations:

- **Bottom-Left**: Starts the screen saver (requires Command ⌘ key).
- **Bottom-Right**: Opens a Quick Note (requires Command ⌘ key).
- **Top-Left**: Locks the screen (requires Command ⌘ key).
- **Top-Right**: Opens the Notification Center (requires Command ⌘ key).

## Installed Software

### Homebrew Formulae:

- **[antidote](https://getantidote.github.io/)**: A fast and lightweight plugin manager for Zsh.
- **[awscli](https://aws.amazon.com/cli/)**: A unified tool to manage AWS services from the command line.
- **[cocoapods](https://cocoapods.org/)**: A dependency manager for Swift and Objective-C Cocoa projects.
- **[colima](https://github.com/abiosoft/colima)**: Container runtimes on macOS with minimal setup.
- **[docker](https://www.docker.com/)**: A platform for developing, shipping, and running applications in containers.
- **[docker-buildx](https://docs.docker.com/buildx/working-with-buildx/)**: Docker CLI plugin for extended build capabilities with BuildKit.
- **[docker-compose](https://docs.docker.com/compose/)**: Define and run multi-container applications with Docker.
- **[doctl](https://github.com/digitalocean/doctl)**: The official command line interface for DigitalOcean.
- **[fastfetch](https://github.com/fastfetch-cli/fastfetch)**: A neofetch-like tool for fetching system information and displaying them in a pretty way.
- **[ffmpeg](https://ffmpeg.org/)**: A complete, cross-platform solution to record, convert and stream audio and video.
- **[fzf](https://github.com/junegunn/fzf)**: A command-line fuzzy finder.
- **[gemini-cli](https://github.com/GoogleCloudPlatform/gemini-cli)**: CLI for Google Gemini.
- **[gh](https://cli.github.com/)**: GitHub’s official command line tool.
- **[git](https://git-scm.com/)**: A free and open source distributed version control system.
- **[gnupg](https://gnupg.org/)**: A complete and free implementation of the OpenPGP standard.
- **[jq](https://stedolan.github.io/jq/)**: Command-line JSON processor.
- **[kubernetes-cli](https://kubernetes.io/docs/reference/kubectl/overview/)**: A command-line tool for interacting with Kubernetes clusters.
- **[mas](https://github.com/mas-cli/mas)**: A command-line interface for the Mac App Store.
- **[mole](https://github.com/tw93/Mole)**: Deep clean and optimize your Mac.
- **[neovim](https://neovim.io/)**: A hyperextensible Vim-based text editor.
- **[fnm](https://github.com/Schniz/fnm)**: Fast Node Manager - A fast and simple Node.js version manager, built in Rust.
- **[ollama](https://ollama.ai/)**: Create, run, and share large language models (LLMs).
- **[starship](https://starship.rs/)**: The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- **[stern](https://github.com/stern/stern)**: Tail multiple Kubernetes pods and containers in real time.
- **[stripe-cli](https://stripe.com/docs/stripe-cli)**: A command-line tool for Stripe that helps you build, test, and manage your Stripe integration.
- **[vercel-cli](https://vercel.com/docs/cli)**: A command-line interface for Vercel that helps you develop and deploy your projects.
- **[watchman](https://facebook.github.io/watchman/)**: A tool by Facebook for watching changes in the filesystem and triggering actions.
- **[xh](https://github.com/ducaale/xh)**: Friendly and fast tool for sending HTTP requests.

### Homebrew Casks:

- **[1Password](https://1password.com/)**: A password manager that helps you store and manage your passwords securely.
- **[affinity](https://affinity.serif.com/)**: A suite of professional creative software.
- **[Android Studio](https://developer.android.com/studio)**: The official IDE for Android development.
- **[brave-browser](https://brave.com/)**: A free and open-source web browser.
- **[ChatGPT](https://chat.openai.com/)**: Desktop app for interacting with OpenAI's ChatGPT.
- **[Claude](https://claude.ai/)**: An AI assistant developed by Anthropic.
- **[Claude Code](https://claude.ai/code)**: A CLI coding assistant by Anthropic.
- **[cursor](https://cursor.so/)**: An AI-powered code editor.
- **[Cyberduck](https://cyberduck.io/)**: A libre server and cloud storage browser.
- **[Discord](https://discord.com/)**: A communication platform for voice, video, and text.
- **[Figma](https://www.figma.com/)**: A web-based vector graphics editor and prototyping tool.
- **[Firefox](https://www.mozilla.org/en-US/firefox/new/)**: A fast, private, and secure web browser.
- **[font-maple-mono-nf](https://github.com/subframe7536/maple-font)**: A monospace font for developers.
- **[gcloud-cli](https://cloud.google.com/sdk/gcloud)**: Google Cloud SDK command-line tools.
- **[ghostty](https://ghostty.app/)**: A modern terminal emulator for macOS.
- **[iStat Menus](https://bjango.com/mac/istatmenus/)**: A powerful system monitoring tool for macOS.
- **[Lens](https://k8slens.dev/)**: The Kubernetes IDE for managing clusters efficiently.
- **[nordvpn](https://nordvpn.com/)**: A VPN service that provides secure and private internet access.
- **[OnlyOffice](https://www.onlyoffice.com/)**: A comprehensive office suite for document management and collaboration.
- **[PHPStorm](https://www.jetbrains.com/phpstorm/)**: A professional IDE for PHP developers from JetBrains.
- **[Postman](https://www.postman.com/)**: An API platform for building and using APIs.
- **[Raycast](https://www.raycast.com/)**: A blazingly fast, totally extendable launcher for macOS.
- **[SF Symbols](https://developer.apple.com/sf-symbols/)**: Apple's icon set for developers.
- **[Slack](https.slack.com/)**: A collaboration platform for teams to communicate and share files.
- **[Sublime Text](https://www.sublimetext.com/)**: A sophisticated text editor for code, markup, and prose.
- **[TablePlus](https://tableplus.com/)**: A modern, native tool for managing relational databases.
- **[tailscale-app](https://tailscale.com/)**: Zero config VPN for building secure networks.
- **[Telegram](https://telegram.org/)**: A cloud-based instant messaging, video telephony, and VoIP service.
- **[Transmission](https://transmissionbt.com/)**: A fast, easy, and free BitTorrent client.
- **[Visual Studio Code](https://code.visualstudio.com/)**: A lightweight but powerful source code editor.
- **[VLC](https://www.videolan.org/vlc/)**: A free and open-source cross-platform multimedia player.
- **[WhatsApp](https://www.whatsapp.com/)**: A free messaging and video calling app.
- **[zulu@17](https://www.azul.com/downloads/)**: An open-source build of the Java Development Kit (JDK).

### Mac App Store Applications (installed via `mas`):

- **[Numbers](https://apps.apple.com/us/app/numbers/id409203825?mt=12)**: A spreadsheet application developed by Apple.
- **[Pages](https://apps.apple.com/us/app/pages/id409201541?mt=12)**: A word processor developed by Apple.
- **[Permute 3](https://apps.apple.com/us/app/permute-3/id1444998321?mt=12)**: A media converter for macOS.
- **[Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)**: An integrated development environment for macOS, iOS, watchOS, and tvOS.

### VSCode Extensions:

- **[anthropic.claude-code](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code)**: Claude Code extension for VS Code.
- **[biomejs.biome](https://marketplace.visualstudio.com/items?itemName=biomejs.biome)**: Biome - a fast formatter and linter for JavaScript/TypeScript.
- **[bradlc.vscode-tailwindcss](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)**: Tailwind CSS IntelliSense.
- **[catppuccin.catppuccin-vsc](https://marketplace.visualstudio.com/items?itemName=catppuccin.catppuccin-vsc)**: Catppuccin for VSCode.
- **[editorconfig.editorconfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)**: EditorConfig for VS Code.
- **[github.copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)**: AI-powered code completion from GitHub.
- **[github.copilot-chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)**: Chat interface for GitHub Copilot.
- **[github.vscode-github-actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)**: GitHub Actions workflows support.
- **[ms-playwright.playwright](https://marketplace.visualstudio.com/items?itemName=ms-playwright.playwright)**: Run Playwright tests in VS Code.
- **[prisma.prisma](https://marketplace.visualstudio.com/items?itemName=prisma.prisma)**: Adds syntax highlighting, formatting, auto-completion, jump-to-definition and linting for .prisma files.
- **[thang-nm.catppuccin-perfect-icons](https://marketplace.visualstudio.com/items?itemName=thang-nm.catppuccin-perfect-icons)**: Catppuccin-themed file icons.
- **[xyz.local-history](https://marketplace.visualstudio.com/items?itemName=xyz.local-history)**: A local history of files to recover from accidental changes.

## Usefull commands

### Dump Brew bundle

To keep `Brewfile` up to date any time new software is installed run the following command.

```bash
brew bundle dump --force
```

