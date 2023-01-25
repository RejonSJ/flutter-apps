import 'package:flutter/material.dart';
import 'package:soccer_dummy_app/core/entities/tournament.dart';
import 'package:soccer_dummy_app/data/tournament_repository.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tournaments = TournamentRepository.getTournament();
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) =>
              createItemList(context, tournaments[index]),
          separatorBuilder: (_, __) => const Divider(),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }

  createItemList(BuildContext context, Tournament tournament) => Card(
    child: ListTile(
        leading: const Icon(Icons.catching_pokemon),
        title: Text(tournament.name),
        subtitle: Text('Match day: ${tournament.matchDay}'),
        trailing: displayImage(context, tournament.profileUrl),
        onTap: () => displayAlert(context, tournament)
      ),
  );

  displayImage(BuildContext context, String profileUrl) =>
      FadeInImage.assetNetwork(
          placeholder: 'images/loading.gif',
          image: profileUrl,
          fit: BoxFit.cover,
          width: 100,
          height: 100,
      );

  displayAlert(BuildContext context, Tournament tournament) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(tournament.name),
                const SizedBox(height: 10),
                displayImage(context, tournament.profileUrl)
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel', style: TextStyle(color: Colors.grey),)),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Ok'))
            ],
          ),
          barrierColor: Colors.deepPurple,
          );
}
