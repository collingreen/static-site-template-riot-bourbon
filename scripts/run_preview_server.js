/**
 * Runs the wintersmith preview server.
 *
 * Duplicated here so the wintersmith version can be easily controlled
 * via npm (and wintersmith does not need to be installed globally).
 */

var wintersmith = require('wintersmith')

var env = wintersmith('config.json')

env.preview(function (err) {
  if (err) {
    throw err
  }
})
