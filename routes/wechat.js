var wechat = require('wechat');
var config = require('../config');
module.exports = function(app){
    app.use('/', wechat(config.wechat.accessToken, function (req, res, next) {
        console.log(JSON.stringify(req.weixin));
        // 微信输入信息都在req.weixin上
        res.reply({
            content: '你好，欢迎关注小玛哥！',
            type: 'text'
        });
    }));
}
