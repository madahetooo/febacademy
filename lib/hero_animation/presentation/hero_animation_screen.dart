import 'package:febacademy/hero_animation/model/person.dart';
import 'package:febacademy/hero_animation/presentation/details_screen.dart';
import 'package:flutter/material.dart';

const people = [
  Person(name: 'Eslam', age: 27, emoji: '🧔🏿‍♂️'),
  Person(name: 'Yassine', age: 26, emoji: '🙋🏻‍♂️'),
  Person(name: 'Habiba', age: 25, emoji: '👸🏽'),
];

class HeroAnimationScreen extends StatelessWidget {
  const HeroAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('People'),
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return ListTile(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>DetailsScreen(person: person))
                );
              },
              title: Text(
                person.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('${person.age} years old'),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: Hero(
                tag: person.name,
                child: Text(
                  person.emoji,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            );
          }),
    );
  }
}
