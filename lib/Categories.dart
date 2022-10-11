import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Place {

  String Image;
 String name;
  Place({
    required this.Image,
    required this.name
  });
}

final List<Place> place = [
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnjn5CpMqExg2nVDHx3GhPOBOC5Hs6HcK5NQ&usqp=CAU", name: "Men"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa9t_FgdF1tFbiBdaE7SUHX0xetXp9yW-PXA&usqp=CAU", name: "woman"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDMQNqQfCG6MdFLJQkkFU_rvE6kn8vHmm8w&usqp=CAU", name: "Devices"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwZka5ekm6Pk5kpw4hshRGa8vI_gj0Vg1iNg&usqp=CAU", name: "Cadget"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqHKjehDRUhGzNHMjVY648F0i_SdanguyzJA&usqp=CAU", name: "Games"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2JxFMikn2PWCD3BGurJMgH-mINnJ2N_R8Ug&usqp=CAU", name: "Sb7"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnjn5CpMqExg2nVDHx3GhPOBOC5Hs6HcK5NQ&usqp=CAU", name: "Men"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa9t_FgdF1tFbiBdaE7SUHX0xetXp9yW-PXA&usqp=CAU", name: "woman"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDMQNqQfCG6MdFLJQkkFU_rvE6kn8vHmm8w&usqp=CAU", name: "Devices"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwZka5ekm6Pk5kpw4hshRGa8vI_gj0Vg1iNg&usqp=CAU", name: "Cadget"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqHKjehDRUhGzNHMjVY648F0i_SdanguyzJA&usqp=CAU", name: "Games"),
  Place(Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2JxFMikn2PWCD3BGurJMgH-mINnJ2N_R8Ug&usqp=CAU", name: "Sb7")
];
class catogory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,),
      bottomNavigationBar: Container(
        child: Container(
          height: 70,
          child: BottomNavigationBar(

            items: [

              BottomNavigationBarItem(label: "",icon: Text("Explore",style: TextStyle(fontWeight: FontWeight.bold),)),
              BottomNavigationBarItem(label: "",icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,)),
              BottomNavigationBarItem(label: "",icon: Icon(Icons.person_outline_outlined,color: Colors.black,))
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 370,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(30)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black54,size: 29,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Categories",style: TextStyle(fontSize: 22),),
                ],
              ),
            ),
            SizedBox(height: 18,),
Padding(
  padding: const EdgeInsets.only(left: 22),
  child:   Container(

    height: 100,

    child:   ListView.separated(

      scrollDirection: Axis.horizontal,

        shrinkWrap: true ,

        itemBuilder: (context, index) => categ(place[index]),

        separatorBuilder: (context, index) => SizedBox(width: 18,), itemCount: place.length),

  ),
),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [
                Text("Best Selling",style: TextStyle(fontSize: 27,color: Colors.black),),
                SizedBox(width: 150,),
                Text("See all",style: TextStyle(color: Colors.grey,fontSize: 17),)
              ],),
            ),
            SizedBox(height: 50,)
,SingleChildScrollView(
              scrollDirection: Axis.horizontal,
  child:   Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJMgw09HMB7sd1ibaSohosa_KaLGi50c8bsJaHD2zBvK0VRQHYd07rjotPG3sHZpxbatc&usqp=CAU"))),
                        SizedBox(height: 17,),
                        Text("BeoPlay Speaker",style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                        SizedBox(height: 6,),
                        Text("Bang and culfues",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        SizedBox(height: 15,),
                        Text("\$755",style: TextStyle(fontSize: 20,color: Colors.green),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 200,
                            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQisTxLaV9Vmv1hSi5idy0X_Fw94Ds541lwYw&usqp=CAU"))),
                        SizedBox(height: 17,),
                        Text("Lather WristWatch",style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                        SizedBox(height: 6,),
                        Text("lag Header",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        SizedBox(height: 15,),
                        Text("\$450",style: TextStyle(fontSize: 20,color: Colors.green),)
                      ],
                    ),
                  )
                ],
              ),
)

          ],
        ),
      ),
    );
  }
  Widget categ(Place use)=> Column(
    children: [
      FloatingActionButton(clipBehavior: Clip.antiAlias,onPressed: (){},
        child: Image(image: NetworkImage("${use.Image}")),),
      SizedBox(height: 17,),
      Text("${use.name}",style: TextStyle(color: Colors.grey[500]),)
    ],
  );
}