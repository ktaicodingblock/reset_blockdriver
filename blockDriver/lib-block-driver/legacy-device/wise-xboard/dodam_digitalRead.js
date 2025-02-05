const { execShellCommand } = require("../../process-utils")
const { python3Wise } = require("./util")

async function dodam_digitalRead(socket, msg, extra) {
    const { data } = msg.data ?? {}
    const result = await execShellCommand(python3Wise('dodam_digitalRead.py ', data))
    console.log('data = ' + result)
    socket.emit('receiveData', {
        Type: 'dodam_digitalRead_data',
        Data: { data: result }
    })
    socket.emit('receiveData', {
        Type: 'dodam_get_digital_data',
        Data: { ret: true },
    })
}

module.exports = { dodam_digitalRead }
