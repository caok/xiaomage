
/*
 * GET home page.
 */
var config = require('../config')
var Db = require('mysql-activerecord');
var https = require('https');
var crypto = require('crypto');
var db = new Db.Adapter(config.databaseConfig);

Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

function getDateTime(d){
  return d.getFullYear() + '-' + (d.getMonth()+1) + '-' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds()
}
function getDate(d){
  return d.getFullYear() + '-' + (d.getMonth()+1) + '-' + d.getDate();
}

module.exports = function(app){

    //权限控制
    //function testRole(req,res,next){
        //if(!hasOpenId(req,res,req.url)) {
            //return;
        //}
        //console.log('enter ' + req.url);
        //var ex = /\/wechat\/bind(Form|Info|Submit)/;
        //console.log('userid: '+req.session.userId);
        //var isBindReq = ex.test(req.url);
        //if(req.session.userId){
            //if(!isBindReq)
                //next();
            //else{
                //res.redirect('/wechat/announcement');
            //}
            //return;
        //}
        //db.where('openid',req.cookies.openid)
            //.get('user',function(err,rows){

                //if(err){
                    //console.log(err.toString());
                    //res.write('error openid');
                    //res.end();
                    //return;
                //}
                //console.log('rows' + JSON.stringify(rows));

                ////没有注册信息，跳转到注册
                //if(rows.length === 0){
                    //if(!isBindReq){
                        //res.redirect('/wechat/bindInfo');
                    //}
                    //else{
                        //next();
                    //}
                //}
                ////已经有注册信息
                //else if(rows.length === 1){
                    ////已经注册但是没有审核通过
                    //console.log(rows[0].status + '____' + UserStatus.Init);
                    //console.log(rows[0].status===UserStatus.Init);
                    //if(rows[0].status === UserStatus.Init){
                        //if(/\wechat\/bindSubmit/.test(req.url)){
                            //next();
                        //}
                        //else{
                            //res.redirect('/wechat/bindSubmit');
                        //}
                        //return;
                    //}
                    ////已经注册完了
                    //else{
                        //req.session.userId = rows[0].id;
                        //next();
                    //}
                //}
        //})
////        var openid = 'ov4fAuF8JUrx5Od2IM1k6CFFyLCI';
////        req.cookies.openid = openid;
////        next();
    //}
    ////app.get('/wechat/*',testRole);
    ////app.post('/wechat/*',testRole);

    ////判断是否有该openid
    //function hasOpenId(req,res,url){
        //console.log('enter hasopenid');
        //if(req.cookies.openid)
            //return true;
        //var newurl = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid='+ config.wechat.AppId +
        //'&redirect_uri=' + encodeURI('http://wechat.lashare.cn/getopenid?url=' + url) +
        //'&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect';
        //console.log('redict ' + newurl);
        //res.redirect(newurl);
        //return false;
    //}

    ////判断如果没有openid，将获取openid
    //app.get('/getopenid',function(req,res){
        //var code = req.query.code;
        //var url = req.query.url;
        //if(!code){
            //res.write('wechat code error');
            //res.end();
            //return;
        //}

        //https.get('https://api.weixin.qq.com/sns/oauth2/access_token?appid=' + config.wechat.AppId +
                //'&secret=' + config.wechat.AppSecret +
                //'&code=' + code + '&grant_type=authorization_code'
            //,function(result){
                //result.on('data',function(d){
                    //var re = JSON.parse(d.toString());
                    //res.cookie('openid', re.openid, {maxAge:31536000000, httpOnly:true});
                    //console.log('redirect to '+url);
                    //res.redirect(url);
                //})
            //}).on('error',function(e){
                //res.write(e.toString());
                //res.end();
            //});
    //})

    app.get('/index/setmenu',function(req,res){
        var menu = {
          button:[
            {
              type:'view',
              name:'趣文',
              url: config.wechat.url + '/wechat/article'
            },
            {
              name:'有料',
              sub_button:[
                {
                  type:'view',
                  name:'捣江湖',
                  url: config.wechat.url + '/wechat/dao'
                },
                {
                  type:'view',
                  name:'毫稍来看',
                  url:config.wechat.url + '/wechat/hao'
                },
                {
                  type:'view',
                  name:'DayDay Up',
                  url:config.wechat.url + '/wechat/day'
                }
              ]
            },
            {
              name:'小玛哥',
              sub_button:[
                {
                  type:'view',
                  name:'活动',
                  url: config.wechat.url + '/wechat/activity'
                },
                {
                  type:'view',
                  name:'招兵买马',
                  url:config.wechat.url + '/wechat/zhao'
                },
                {
                  type:'view',
                  name:'求文若渴',
                  url:config.wechat.url + '/wechat/qiu'
                }
              ]
            }
          ]
        };
        var API = require('wechat').API;
        var api = new API(config.wechat.AppId, config.wechat.AppSecret);
        api.createMenu(menu,function(err,result){
            //console.log(err);
            //console.log(result);
            res.write('finish');
            res.end();
        })
    })

    //绑定
    //app.get('/wechat/bindInfo',function(req,res){
      //db.where("openid", req.cookies.openid).get('user', function(err, rows){
        //if (rows.length > 1){
          //res.redirect('/wechat/bindSubmit');
        //} else {
          //res.render('wechat/bindInfo');
        //}
      //})
    //})

    //app.get('/wechat/bindSubmit',function(req,res){
        //res.render('wechat/bindSubmit');
    //})

    //app.get('/wechat/bindForm',function(req,res){
        //db.get('community',function(err,rows){
            //if(err){
                //return;
            //}
            //res.render('wechat/bindForm',{community:rows});
        //})
    //})
    //app.post('/wechat/bindForm',function(req,res){
      //db.where("openid", req.cookies.openid).get('user', function(err, rows){
        //if (rows.length === 1){
          //res.redirect('/wechat/bindSubmit');
        //} else {
          ////res.render('wechat/bindInfo');
          //var user = {
              //type:req.body.type,
              //name:req.body.name,
              //phone:req.body.phone,
              //communityId:req.body.communityId,
              //address:req.body.address,
              //info:req.body.info||'',
              //status:0,
              //openid:req.cookies.openid
          //}

          //db.insert('user',user,function(err,info){
              //if(err){
                  //console.log(err.toString());
                  //return;
              //}
              //res.redirect('/wechat/bindSubmit');
              //return;
          //})
        //}
      //});
    //})

    //趣文
    app.get('/wechat/article',function(req,res){
      if(!req.query.page) {
        res.render('wechat/article');
        return;
      }
      db.select(['article.id','article.title','article.abstract','article.time', 'article.cover'])
        .order_by('time desc')
        .limit(10,10*parseInt(req.query.page))
        .get('article',function(err,rows,fields){
          if(err){
            console.log(err.toString());
            return;
          }
          console.log(rows.length);
          for(var i = 0; i < rows.length;i++){
            rows[i].time = rows[i].time.Format('yyyy-M-d');
          }
          res.write(JSON.stringify(rows));
          res.end();
        })
    })

    app.get('/wechat/articleDetail',function(req,res){
      db.where('id',parseInt(req.query.id))
        .get('article',function(err,rows,fields){
          if(err){
            console.log(err.toString());
            return;
          }
          if(rows.length !== 1){
            return;
          }
          rows[0].time = rows[0].time.Format('yyyy年M月d日 hh:mm');
          res.render('wechat/articleDetail',{obj:rows[0]});
        })
    })

  //活动
  app.get('/wechat/activity', function(req, res){
    if(!req.query.page) {
      res.render('wechat/activity');
      return;
    }
    db.select(['activity.id','activity.title','activity.detail',
    'activity.time', 'activity.cover'])
      .order_by('time desc')
      .limit(10,10* parseInt(req.query.page))
      .get('activity',function(err,rows,fields){
         if(err){
             console.log(err.toString());
             return;
         }
         console.log(rows.length);
         for(var i = 0; i < rows.length;i++){
             rows[i].time = rows[i].time.Format('yyyy-M-d');
         }
         res.write(JSON.stringify(rows));
         res.end();
      })
  });

  app.get('/wechat/activityDetail',function(req,res){
    db.where('id',parseInt(req.query.id))
      .get('activity',function(err,rows,fields){
          if(err){
              console.log(err.toString());
              return;
          }
          if(rows.length !== 1){
              return;
          }
          rows[0].time = rows[0].time.Format('yyyy年M月d日 hh:mm');
          res.render('wechat/activityDetail',{obj:rows[0]});
      })
  })

  //---------------------------admin------------------------------------
  app.get('/admin', function(req, res){
    if(!req.session.admin){
      res.redirect('/admin/login');
      return;
    }
    res.render('admin/index');
  });

  app.get('/admin/login', function(req, res){
    if(req.params.new === 'true'){
    if(req.session.admin)
      delete req.session.admin;
    }
    if(req.session.admin)
      return res.redirect('/admin');
    res.render('admin/login');
  });

  app.post('/admin/login',function(req, res){
    if(req.session.admin)
      return res.redirect('/admin');

    if (!req.body.admin || !req.body.password){
      return res.render('admin/login', {alert: "请输入您的用户名和密码!"});
    }
    var admin = req.body.admin;
    db.where({name: admin}).get('admin',function(err, admins, fields){
      if(err){
        console.log(err);
      }else{
        if (admins.length == 0){
          return res.render('admin/login', {alert: "没有该用户"});
        }

          var md5sum = crypto.createHash('md5');
          md5sum.update(req.body.password);
          var pwdstr = md5sum.digest('hex');
        if (admins[0].password === pwdstr){
          req.session.admin = admins[0].name;
          return res.redirect('/admin');
        } else {
          res.render('admin/login', {alert: "密码错误"});
        }
      }
    })
  });

  app.get('/partials/:name', function(req, res){
    if(!req.session.admin){
      res.redirect('/admin/login');
      return;
    }
    res.render('admin/partials/'+req.params.name);
  });

  // 趣文
  app.get('/admin/article', function(req, res){
    console.log("article index");
    db.select('id, title, time, abstract')
      .get('article',function(err, article, fields){
      if(err){
        console.log(err);
      }else{
        res.send(article);
      }
    })
  });
  app.get('/admin/article/:id', function(req, res){
    console.log("article show");
    db.where({id: req.params.id}).get('article',function(err, article, fields){
      if(err){
        console.log(err);
      }else{
        res.send(article[0]);
      }
    })
  });
  app.post('/admin/article', function(req, res){
    console.log("article create");
    console.log(req.body.detail);
    var article = {
      title:req.body.title,
      cover:req.body.cover,
      abstract: req.body.abstract,
      detail:req.body.detail,
      time:getDateTime(new Date())
    }
    db.insert('article', article, function(err, article){
      if (err){
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      };
    });
  });
  app.post('/admin/article/:id', function(req, res){
    console.log("article update");
    console.log(req.body.detail);
    var article = {
      title:req.body.title,
      cover:req.body.cover,
      detail:req.body.detail,
      abstract: req.body.abstract
    }
    db.where({id: req.params.id}).update('article', article, function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  app.delete('/admin/article/:id', function(req, res){
    console.log("article delete");
    db.where({id: req.params.id}).delete('article', function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });

  // 小区活动
  app.get('/admin/activities', function(req, res){
    console.log("activitys index");
    db.select('activity.id AS id, community.name AS community, title, time')
      .join('community', 'community.id = activity.communityId')
      .get('activity',function(err, activities, fields){
      if(err){
        console.log(err);
      }else{
        res.send(activities);
      }
    })
  });
  app.get('/admin/activities/:id', function(req, res){
    console.log("activitys show");
    db.where({id: req.params.id}).get('activity',function(err, activitys, fields){
      if(err){
        console.log(err);
      }else{
        res.send(activitys[0]);
      }
    })
  });
  app.post('/admin/activities', function(req, res){
    console.log("activitys create:", req.body.detail);
    var activity = {
      title:req.body.title,
      detail:req.body.detail,
      communityId: req.body.communityId,
      cover: req.body.cover,
      time:getDateTime(new Date())
    }
    db.insert('activity', activity, function(err, activity){
      if (err){
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      };
    });
  });
  app.post('/admin/activities/:id', function(req, res){
    var activity = {
      title:req.body.title,
      detail:req.body.detail,
      cover: req.body.cover,
      communityId: req.body.communityId
    }
    db.where({id: req.params.id}).update('activity', activity, function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  app.delete('/admin/activities/:id', function(req, res){
    console.log("activitys delete");
    db.where({id: req.params.id}).delete('activity', function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  // 用户
  app.get('/admin/users', function(req, res){
    console.log("users index");
    db.select('user.id AS id, user.name AS name, community.name AS community, openid, type, phone, address, info, status')
      .join('community', 'community.id = user.communityId').get('user',function(err, users, fields){
      if(err){
        console.log(err);
      }else{
        res.send(users);
      }
    })
  });
  app.get('/admin/users/:id', function(req, res){
    console.log("users show");
    db.where({'user.id': req.params.id})
      .select('user.id AS id, user.name AS name, community.name AS community, openid, type, phone, address, info, status')
      .join('community', 'community.id = user.communityId').get('user',function(err, users, fields){
      if(err){
        console.log(err);
      }else{
        res.send(users[0]);
      }
    })
  });
  app.post('/admin/users/:id', function(req, res){
    db.where({id: req.params.id}).update('user', {status: req.body.status}, function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  app.delete('/admin/users/:id', function(req, res){
    console.log("users delete");
    db.where({id: req.params.id}).delete('user', function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  // 上门维修
  app.get('/admin/maintains', function(req, res){
    console.log("maintains index");
    db.select('maintenance.id AS id, maintenance.status AS status, user.name AS username, title, time')
      .join('user', 'user.openid = maintenance.openid')
      .get('maintenance',function(err, maintains, fields){
      if(err){
        console.log(err);
      }else{
        res.send(maintains);
      }
    })
  });
  app.get('/admin/maintains/:id', function(req, res){
    console.log("maintains show");
    db.select('maintenance.id AS id, maintenance.status AS status, user.name AS username, title, time, detail, user.phone AS phone, user.address AS address, community.name AS community')
      .join('user', 'user.openid = maintenance.openid')
      .join('community', 'community.id = user.communityId')
      .where({'maintenance.id': req.params.id}).get('maintenance',function(err, maintains, fields){
      if(err){
        console.log(err);
      }else{
        res.send(maintains[0]);
      }
    })
  });
  app.post('/admin/maintains/:id', function(req, res){
    db.where({id: req.params.id}).update('maintenance', {status: req.body.status}, function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  // 投诉建议
  app.get('/admin/complaints', function(req, res){
    console.log("complaints index");
    db.select('complaint.id AS id, complaint.status AS status, user.name AS username, title, time')
      .join('user', 'user.openid = complaint.openid')
      .get('complaint',function(err, complaints, fields){
      if(err){
        console.log(err);
      }else{
        res.send(complaints);
      }
    })
  });
  app.get('/admin/complaints/:id', function(req, res){
    db.select('complaint.id AS id, complaint.status AS status, user.name AS username, title, time, detail, user.phone AS phone, user.address AS address, community.name AS community')
      .join('user', 'user.openid = complaint.openid')
      .join('community', 'community.id = user.communityId')
      .where({'complaint.id': req.params.id}).get('complaint',function(err, complaints, fields){
      if(err){
        console.log(err);
      }else{
        res.send(complaints[0]);
      }
    })
  });
  app.post('/admin/complaints/:id', function(req, res){
    db.where({id: req.params.id}).update('complaint', {status: req.body.status}, function(err) {
      if (err) {
        console.log(err);
        res.send({result: 'failure'});
      } else {
        res.send({result: 'success'});
      }
    });
  });
  app.get('/admin/communities', function(req, res){
    db.get('community',function(err, communities, fields){
      if(err){
        console.log(err);
      }else{
        res.send(communities);
      }
    })
  });

  app.post('/upload', function(req, res){
    if(!req.files.files){
      res.send(false);
      return;
    }
    var fileInfo = req.files.files;
    var file = {name: fileInfo.originalname, path: fileInfo.path.replace("public", "")}
    res.send(JSON.stringify({file: file}));
  });

  app.post('/uploadImg', function(req, res){
    if(!req.files.upfile){
      res.send(JSON.stringify({"state":"\u975e\u6cd5\u4e0a\u4f20\u76ee\u5f55"}));
      return;
    }

    var file = req.files.upfile;
    res.send(JSON.stringify({'url':file.path.replace("public", ""),
                             'title':file.originalname,
                             'original':file.name,
                             'state':'SUCCESS'}))
  });

  app.get('/uploadImg', function(req, res){
    res.send("updateSavePath("+JSON.stringify(['upload'])+");");
  });
}
