exports.auth_user = function (req, res, next) {
  if (req.cookies.admin && req.cookies.superuser == 1){
    res.locals.superuser = 1;
  }else{
    res.locals.superuser = 0;
  }
  next();
}
