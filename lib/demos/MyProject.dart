// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/exercise_tile.dart';

import '../util/emoticon_face.dart';

class MyProjectDemoView extends StatefulWidget {
  const MyProjectDemoView({super.key});

  @override
  State<MyProjectDemoView> createState() => _MyProjectDemoViewState();
}

class _MyProjectDemoViewState extends State<MyProjectDemoView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[800],
      // en al navbar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0x00000928),
        fixedColor: Color.fromARGB(255, 237, 3, 3),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]
      ),

      body: SafeArea(           // araştır 
        child: Column( 
          children: [ 
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Column(
              children: [
                 Row(          // colmn ile containerin row u
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                // Hi Jared! (SOL ÜSTTEKİ MESAJ)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,             // hi, Jared! ve 23 jan 2023 yazısını en sola yaslıyor. YENİ ÖGRENDİM (colm ve container bitince yazdık bunu )
                  children: [
                    Text('Hi, Mert!',
                     style: TextStyle(
                     color: Colors.white,
                     fontSize: 24,
                     fontWeight: FontWeight.bold
                      ),
                      ),
           
                      SizedBox(height: 8,),                                // bunu açmamızın sebebi üstteki ve alttaki text in arasına boşluk kolaymak için 
           
                       Text('23 Jan, 2023',
                       style: TextStyle(color: Colors.blue[200]),
                       ),
                  ],
                ),
                    
                // Notification (ÜSTTEKİ ÇAN İCONU)
                Container(                                                 // önce icon açıp sonra container ile sarmaladık ve  decoration yaptık 
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12) 
                   ),
                    padding: EdgeInsets.all(12),                           // dikkat et padding i container içinde verdik. yani paddik ile sarmalamadık. bu sayede container in içine paddingn vermiş olduk.
                    child: Icon(
                    Icons.notifications ,
                    color: Colors.white,
                   ),
                ),      
              ],    
              ),
              // ****
              SizedBox(height: 25,),    // search boz ile üstteki yapının arasına boşluk koymak için yaptık
              // ****
              // SEARCH BAR 
              TextField(
                decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                labelText: 'Search', labelStyle: const TextStyle(color: Colors.white), 
                border: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(12)), 
                ),
                ),
                ), 
           
                   SizedBox(height: 25,),    // input ile altındaki için boşluk vermek amaçlı
           
                  // HOW DO YU FELL ?'
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('How do you Fell ?',
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                             ),
                          ),
           
                        TextButton(onPressed: (){}, 
                        child:  Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          ), 
                          ) 
                     ],
                   ),
                    SizedBox(height: 25,), 
           
           
                    // 4 DİFFERENT FACES BÖLÜMÜ (EMOJİ BÖLÜMÜ)
           
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // bad
                         Column(
                           children: [
                            EmoticonFace(emoticonface: '😡'), 
                            SizedBox(height: 8,), 
                            Text('Bad', style: TextStyle(color: Colors.white),)
                           ],
                         ),
           
                        // fine 
                        Column(
                           children: [
                             EmoticonFace(emoticonface: '😂',),
                             SizedBox(height: 8), 
                             Text('Fine', style: TextStyle(color: Colors.white),)
                           ],
                         ),
                        //well
                        Column(
                           children: [
                             EmoticonFace(emoticonface: '😕',),
                             SizedBox(height: 8), 
                             Text('Well', style: TextStyle(color: Colors.white),)
                           ],
                         ),
                        //excellent
                        Column(
                           children: [
                             EmoticonFace(emoticonface: '🤩',),
                             SizedBox(height: 8), 
                             Text('Excellent', style: TextStyle(color: Colors.white),)
                           ],
                         ),
                      ],
                    ),
              ],
             ),
           ),
                  // *****
                      SizedBox(height: 25,), 
                // ******
                // BURASI ALTTAKİ BEYAZ EKRAN YAPIMI. 
                    Expanded(
                      child: ClipRRect(           // containeri cliprrect ile sarmaladım ve sol ve sağ köşelere padding verdim cliptrecrect bu işe yarıyormuş. border radius açmak için 
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), 
                        child: Container(
                          padding: EdgeInsets.all(25),
                          color: Colors.blue[200],
                          // child: Center(   // burası kapalı alınca değişiklik olmuyor
                            child: Column(
                                // Exercise Heading
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Excercises', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),
                                // ****                           // BURADA CONTAİNER YAPISI VARDI. YAPIYI BİTİRİNCE EXERCİSE_TİLE.DART SAYFASINA AKTARDIK VE LİSTVİEW AÇARAK EXPENDED İLE SARMALADIK. KISA YOLUNU İSE İÇİNE YAZDIK. (ExerciseTile())
                                 SizedBox(height: 25,),
                                //  *****
                              
                                // listview of exercises  // container yapısını diğer sayfaya aktardık ve kısa  yolunu buraya yazdık
                                Expanded(
                                  child: ListView(
                                    children: [
                                      ExerciseTile(
                                        icon: Icons.favorite,
                                        exercisaName: 'Speaking Skillz',
                                        exercisaDescription: 16,
                                        color: Colors.orange,
                                      ),
                      
                                     // İKİNCİ CARD 
                                      ExerciseTile(
                                        icon: Icons.person,
                                        exercisaName: 'Reading Skills',
                                        exercisaDescription: 8,
                                        color: Colors.green,
                                      ),
                      
                                    // ÜÇÜNCÜ CARD 
                                      ExerciseTile(
                                        icon: Icons.star,
                                        exercisaName: 'Writing Skills',
                                        exercisaDescription: 20,
                                        color: Colors.pink,
                                      ),
                                    ],
                                  ),
                                ),
                                
                      
                              ],
                            ),
                          // ),
                        ),
                      ),
                    ),

        ], // colmn children 
          
        ),
      ),


    );
  }
}









































// BLACKBOX AÇILDI CARD YAPISI SORDUM    SHİFT 2 İLE AÇIKDI 

// const SingleCard = (props) => {
//   return (
//     <div className="card">
//       <img src={props.avatar_url} />
//       <div className="info">
//         <div><h2>{props.login}</h2></div>
//         <div>{props.location}</div>
//         <div>{props.bio}</div>
//       </div>
//     </div>
//   );
// };

// const CardList = (props) => {
//   return (
//     <div className="allCards">
//       {props.profiles.map(eachcard => <SingleCard key={eachcard.id} {...eachcard} />)}
//     </div>
//   );
// };

// class GitForm extends React.Component {
//   state = {userLogin: ''};
//   handleSubmit = (e) => {
//     e.preventDefault();
//     axios.get(`https://api.github.com/users/${this.state.userLogin}`)
//       .then(resp => {
//         this.props.onSubmit(resp.data);
//         this.setState({ userLogin: '' });
//       });
//   };
//   render() {
//     return (
//       <form onSubmit={this.handleSubmit}>
//         <input type="text" 
//           value={this.state.userLogin}
//           onChange={(event) => this.setState({userLogin: event.target.value})}
//           placeholder="Enter Github username..." required />
//         <button type="submit">Generate card</button>
//       </form>
//     );
//   }
// }

// class App extends React.Component {
//   state = {
//     profiles: [
//       {login: "harunpehlivan", avatar_url: "https://avatars2.githubusercontent.com/u/4306341?v=4", bio: "INFORMATION TECHNOLOGY FOUNDER CEO BLOGGER INITIATIVE RESEARCH AND DEVELOPMENT ", location: "SULUOVA-AMASYA TÜRKİYE"}
//     ]
//   };

//   generateNewCard = (profile) => {
//     this.setState(prevState => ({
//       profiles: prevState.profiles.concat(profile)
//     }));
//   };

//   render() {
//     return (
//       <div className="feed">
//         <h1>Github Cards Generator</h1>
//         <div className="generator">
//           <GitForm onSubmit={this.generateNewCard} />
//           <CardList profiles={this.state.profiles} />
//         </div>
//       </div>
//     );
//   }
// }

// ReactDOM.render(
//   <App />,
//   document.getElementById('root')
// );