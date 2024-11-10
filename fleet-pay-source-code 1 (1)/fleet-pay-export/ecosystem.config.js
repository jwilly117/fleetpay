// ecosystem.config.js
module.exports = {
    apps: [
        {
            name: "backend",
            script: "npm",
            args: "start",
            cwd: "./api",
            watch: false,
            env: {
                NODE_ENV: "production",
            }
        }
    ]
};