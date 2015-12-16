part of HomeTeaching;

class Model{
  static Model _model = null;
  static Future<Model> init(){
    if (_model == null){
      _model = new Model();
    }
    return _model._inited.future;
  }

  Completer<Model> _inited = new Completer<Model>();
  sino valid= false;

  Database db;
  Model(){
    if (IdbFactory.supported){
      window.indexedDB.open('myIndexedDB',
      version: 1,
      onUpgradeNeeded: _initializeDatabase)
      .then((Database dbase){
        db = dbase;
        _inited.complete(this);
      });
    }else{
      _inited.complete(null);
    }
  }

  getAll(){
    
  }

}