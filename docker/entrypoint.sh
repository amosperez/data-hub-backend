#!/bin/sh

set -e
set -x

# Check if package.json exists
if [ ! -f package.json ]; then
    echo "INITIALIZING PROJECT..."
    # npm --yes create vite@latest . -- --template react
    # npx express-generator
    npm init -y
    npm install express

    if [ ! -f app.js ]; then
        echo "CREATING app.js..."

        # Insert the Express.js boilerplate code into app.js
        cat <<EOF > app.js
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.listen(port, () => {
    console.log(\`Example app listening on port \${port}\`)
})
EOF
    fi

# Check if dependencies are installed
elif [ ! -d node_modules ]; then
    echo "INSTALLING DEPENDENCIES..."
    npm install
fi


# Run the application
if [ -f app.js ]; then
    echo "STARTING APPLICATION..."
    node app.js
fi

