### Summary: Setting Up SSH Keys for GitHub

To push code to GitHub from your local machine, you need to authenticate your GitHub account using SSH keys. SSH (Secure Shell) keys are a pair of cryptographic keys—one public and one private—that help establish a secure connection between your local machine and GitHub. Here's a step-by-step guide to setting them up:

#### 1. **Generate SSH Key:**
   - Start by generating an SSH key pair on your local machine using the `ssh-keygen` command. This command will create a pair of keys, where one is public (`id_rsa.pub`) and the other is private (`id_rsa`).
   - You can specify the encryption type (e.g., RSA) and the encryption strength (e.g., 4096 bits) during the generation process.
   - Make sure to use the same email associated with your GitHub account when generating the key, as it ties the key to your identity.

   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

   - After running the command, you'll be prompted to specify a file name for the key. The default location is usually `~/.ssh/id_rsa`.

   ```bash
   Enter file in which to save the key (/Users/your_user/.ssh/id_rsa):
   ```

   - You can choose to protect your key with a passphrase, adding an extra layer of security. If you choose not to, simply press Enter to leave it blank.

   ```bash
   Enter passphrase (empty for no passphrase):
   ```

#### 2. **Identify Key Files:**
   - The `ssh-keygen` command will create two files:
     - `id_rsa`: This is your **private key**, which you must keep secure and never share with anyone.
     - `id_rsa.pub`: This is your **public key**, which you will upload to GitHub.

   - These files are stored in your `.ssh` directory, typically found in your home directory (`~/.ssh/`).

   ```bash
   ls ~/.ssh/
   id_rsa  id_rsa.pub
   ```

#### 3. **Upload Public Key to GitHub:**
   - To allow GitHub to recognize your local machine, you need to upload your public key (`id_rsa.pub`) to your GitHub account.

   - First, copy the content of the public key using the following command or by manually opening the file and copying the content:

   ```bash
   cat ~/.ssh/id_rsa.pub
   ```

   - Alternatively, you can use the `pbcopy` command (on macOS) to copy the key directly to your clipboard:

   ```bash
   pbcopy < ~/.ssh/id_rsa.pub
   ```

   - Next, log into GitHub, navigate to **Settings** > **SSH and GPG keys**, and click on **New SSH key**. Paste your public key into the key field and give it a descriptive title. After confirming your GitHub password, the key will be added.

#### 4. **Configure SSH for Git:**
   - Once the public key is added to GitHub, you need to configure your local Git to use the SSH key.

   - Start the SSH agent, which manages your keys and ensures that Git uses them correctly:

   ```bash
   eval "$(ssh-agent -s)"
   ```

   - If you’re using a version of OpenSSH later than 10.12.2, you might need to update your `~/.ssh/config` file to include the path to your private key:

   ```bash
   Host *
       AddKeysToAgent yes
       UseKeychain yes
       IdentityFile ~/.ssh/id_rsa
   ```

   - Finally, add the SSH key to the SSH agent with:

   ```bash
   ssh-add ~/.ssh/id_rsa
   ```

   - This command ensures that your SSH key is loaded and ready to be used by Git.

### Conclusion

By following these steps, you'll securely set up SSH keys to authenticate your GitHub account. This setup not only streamlines your workflow by avoiding repetitive password prompts but also enhances security by using cryptographic keys instead of traditional passwords. Once configured, your local machine will be able to push code to GitHub repositories effortlessly, using the SSH key for authentication. This method is applicable across different operating systems, though slight variations may exist depending on your setup.