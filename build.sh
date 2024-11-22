#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define file name and directories
JAVA_FILE="add.java"
CLASS_FILE="add.class"
JAVA_FILE1="testadd.java"
CLASS_FILE1="testadd.class"

# Step 1: Clean previous builds (if any)
echo "Cleaning previous builds..."
rm -f "$CLASS_FILE"
rm -f "$CLASS_FILE1"

# Step 2: Compile the Java file
echo "Compiling $JAVA_FILE..."
javac "$JAVA_FILE"
javac "$JAVA_FILE1"

# Step 3: Run the compiled Java class
echo "Running the compiled Java class..."
java add
java testadd


