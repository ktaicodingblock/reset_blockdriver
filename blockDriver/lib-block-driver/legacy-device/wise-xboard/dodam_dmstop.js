const { execQuietlyAsync } = require("../../process-utils")
const { pythonWise } = require("./util")

async function dodam_dmstop(socket, msg, extra) {
    await execQuietlyAsync(pythonWise('dodam_dcmotorstop.py'))
}

module.exports = { dodam_dmstop }
