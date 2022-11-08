class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

class Recents {
  String title;
  String content;
  DateTime date;

  Recents({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'Notes': 112,
  'Work': 58,
  'Subjects': 6,
  'Assigments': 15,
  'Time Table': 1,
};

final List<Note> notes = [
  Note(
    title: 'MODULE 1',
    content:
        '''Architecture 	and 	signals, Memory organisation, Minimum and maximum mode of operation, Minimum mode Timing Diagram. Comparison of 8086 and 8088.
''',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'MODULE 2',
    content:
        '''II 	8086 Addressing Modes, 8086  Instruction  set  and Assembler Directives - Assembly Language Programming with Subroutines, Macros, Passing Parameters, Use of stack.
''',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
];

final List<Recents> recent = [
  Recents(
    title: 'SOFT COMPUTING',
    content: '''What is Neural Network, Learning rules and various
activation functions, Single layer Perceptrons , Back
Propagation networks, Architecture of Backpropagation
''',
    date: DateTime(2019, 11, 11, 9, 30),
  ),
  Recents(
    title: 'TOC',
    content: '''Properties of transition functions,
Designing finite automata, NFA, Finite Automata with Epsilon
Transitions
''',
    date: DateTime(2019, 11, 11, 9, 30),
  ),
  Recents(
    title: 'GTC',
    content: '''What is graph – Application of graphs –
finite and infinite graphs – Incidence and Degree – Isolated vertex,
pendent vertex and Null graph.
''',
    date: DateTime(2019, 11, 11, 9, 30),
  ),
  Recents(
    title: 'Data Communication',
    content: '''Communication model Simplex, half duplex and
full duplex transmission - Periodic Analog signals: Sine wave, phase,
wavelength, time and frequency domain,
''',
    date: DateTime(2019, 10, 10, 12, 30),
  ),
];
