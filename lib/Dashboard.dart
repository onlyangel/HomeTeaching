part of HomeTeaching;

class HomeTeaching extends BaseClass{
  Model model;
  HomeTeaching(){
    Model.init()
      ..then((Model m){
        if (m != nul){
          model = m;
          initViews();
        }else{
          window.alert("Error en el navegador");
        }

      })
    ..catchError(_onError);

  }

  initViews(){
    //TODO: GET DATA.
  }

}