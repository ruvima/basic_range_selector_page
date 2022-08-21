import 'package:flutter/material.dart';
import 'package:flutter_foundations/screens/randomizer_page.dart';
import 'package:flutter_foundations/widgets/range_selector_form.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RangeSelectorPage extends HookWidget {
  RangeSelectorPage({
    Key? key,
  }) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (int value) => min.value = value,
        maxValueSetter: (int value) => max.value = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    RandomizerPage(min: min.value, max: max.value),
              ),
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
