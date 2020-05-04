class Cossacks {
  List<Map<String, dynamic>> list;

  Cossacks({ this.list });

  Cossacks.fromJson(List<dynamic> json) {
    if (json != null) {
      list = new List<Map<String, dynamic>>();
      
      json.forEach((cossack) => {
        list.add({
          'name': cossack['name'],
          'title': cossack['title'],
          'born': cossack['born'],
          'died': cossack['died'],
          'image': cossack['image'],
        })
      });
    }
  }
}
