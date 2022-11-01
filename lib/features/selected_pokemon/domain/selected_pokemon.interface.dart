import 'package:pokemon_app/features/selected_pokemon/domain/pokemon_base.interface.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/pokemon_skills.interface.dart';

class ISelectedPokemon {
  const ISelectedPokemon({
    required this.id,
    required this.name,
    required this.ename,
    required this.cname,
    required this.jname,
    required this.pictureUrl,
    required this.type,
    required this.base,
    required this.skills,
  });

  final String id;
  final String name;
  final String ename;
  final String cname;
  final String jname;
  final String pictureUrl;
  final List<String> type;
  final IPokemonBase base;
  final IPokemonSkills skills;
}
