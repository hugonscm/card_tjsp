library card_tjsp;
import 'package:flutter/material.dart';

class CardTjsp extends StatefulWidget {
  final String nome;
  final String cargo;
  final String matricula;
  final String roteiro;
  final String numeroDias;
  final Color? backgroundColor;

  const CardTjsp(
      this.nome, this.cargo, this.matricula, this.roteiro, this.numeroDias, this.backgroundColor,
      {super.key});

  @override
  State<CardTjsp> createState() => _CardTjspState();
}

class _CardTjspState extends State<CardTjsp> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.nome,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('CARGO: ',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Expanded(
                  child: Text(
                    widget.cargo,
                    //quebra de linha automática caso o texto seja muito grande
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('MATRÍCULA: ',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(widget.matricula)
              ],
            ),
            Row(
              children: [
                const Text('ROTEIRO: ',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Expanded(
                  child: Text(
                    widget.roteiro,
                    //quebra de linha automática caso o texto seja muito grande
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('NÚMERO DE DIAS: ',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(widget.numeroDias),
              ],
            )
          ],
        ),
      ),
    );
  }
}
