# Lean 4 Homework Assignment

This repo contains a "Dev Container", which is like a lightweight virtual machine that comes pre-installed with Lean 4. This allows you to code in this repo without installing Lean yourself.
Below are instructions for using this dev container.

---

## Prerequisites

Before you begin, install the following on your computer:

1. **Docker Desktop**  
   Docker is software that runs containers. You do not need to understand Docker deeply; just have it installed and running.  
   Download and install from [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)  
   *(Make sure Docker is running before proceeding.)*

2. **Visual Studio Code (VS Code)**  
   Download and install from [https://code.visualstudio.com](https://code.visualstudio.com)

3. **Dev Containers Extension for VS Code**  
   Open VS Code, go to the Extensions view (on the left-side panel), search for **Dev Containers** by Microsoft, and install it.

---

## Getting Started

Follow these steps to open the assignment:

1. **Clone this repository**  
   Open a terminal and run:
   ```bash
   git clone https://github.com/AydenLamp/example-lean-assignment.git
   ```

2. **Open the folder in VS Code**  
   ```bash
   code example-lean-assignment
   ```
   Or open VS Code and use **File → Open Folder**.

3. **Reopen in Container**  
   When VS Code detects the `.devcontainer` folder, you'll see a prompt:  
   > "Folder contains a Dev Container configuration file. Reopen folder to develop in a container?"

   Click **Reopen in Container**.

   *(If you miss the prompt, click the blue button in the bottom-left corner of the screen, then select **Reopen in Container**.)*

4. **Wait for the container to build**  
   The first time, Docker will download and build the container image. This may take about 10 minutes. Subsequent opens will be much faster since you will not have to rebuild the container.

5. **Start coding!**  
   Once the container is ready, you'll have:
   - Lean 4 and Elan (the Lean version manager) pre-installed
   - The **Lean 4 VS Code extension** automatically installed
   - All dependencies (including Mathlib) fetched and cached

   Open the `Basic.lean` file in the `HomeworkExample/` folder to begin. If the Lean 4 Infoview panel is not already open, click the ∀ icon at the top of your screen and select **Infoview: Toggle**.

   > **Note:** The first time you open the container, you may see an error on the `import` statement in `Basic.lean`. To resolve this, click the blue **Restart File** button at the bottom of the Infoview panel.
