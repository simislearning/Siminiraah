# --- Workflow Variables ---
export username='test'
export realname='test'
# -------------------------

# --- Action: Create Local Account ---
#!/bin/bash
# Creates a new local user account
echo

echo "Creating local account for $username..."
# This is a simplified example. In a real script, you would use sysadminctl or dscl.
# sudo sysadminctl -addUser $username -fullName "$realname" -password "$password"
echo "Account for $username created successfully."
