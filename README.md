# Dotfiles

A personalized configuration repository for your shell environment, currently featuring a customized `.zshrc` setup with Oh My Zsh, Powerlevel10k, and a selection of useful plugins.

## Installation

Follow these steps to set up the dotfiles on your system:

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/anstapol/dotfiles.git
   ```

2. **Create a Symbolic Link for `.zshrc`:**

   ```sh
   ln -s dotfiles/.zshrc ~/.zshrc
   ```

3. **Install Oh My Zsh:**

   If you haven't installed Oh My Zsh yet, run:

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. **Install Powerlevel10k Theme:**

   ```sh
   git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

5. **Install Custom Plugins:**
   ```sh
   git clone --depth=1 https://github.com/ariaieboy/laravel-sail ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/laravel-sail
   ```

## `.zshrc`

This configuration leverages [Oh My Zsh](https://ohmyz.sh/) as the foundation, enhanced with the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme for a visually appealing and informative prompt. The following plugins are included to extend functionality:

- [**alias-finder**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder): Shows matching aliases for the current command. This makes learning new aliases easier.
- [**aliases**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aliases): Provides a command to list all available aliases in your terminal.
- [**docker**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker): Provides completion and useful aliases for managing Docker containers.
- [**docker-compose**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose): Simplifies Docker Compose command usage with aliases and auto-completions.
- [**git**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git): Enhances Git command-line capabilities with additional shortcuts and information.
- [**laravel-sail**](https://github.com/ariaieboy/laravel-sail): Installs helpful aliases for Laravel Sail.
- [**nvm**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nvm): Integrates the Node Version Manager (NVM) for easy Node.js version switching.
- [**web-search**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search): Adds commands to quickly perform web searches from the terminal.
- [**zsh-autosuggestions**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-autosuggestions): Suggests commands as you type based on your history and completions.
- [**zsh-syntax-highlighting**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-syntax-highlighting): Provides syntax highlighting for your shell commands, making it easier to spot errors.

### Dependencies

Ensure you have the following installed:

- [Zsh](https://www.zsh.org/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Git](https://git-scm.com/)

### Customization

Feel free to modify the `.zshrc` file to suit your preferences. You can add or remove plugins, change themes, and adjust settings as needed.

---

Happy coding!