import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:survey_kit/src/result/question_result.dart';
import 'package:survey_kit/src/steps/step.dart';
import 'package:survey_kit/src/steps/identifier/step_identifier.dart';
import 'package:survey_kit/src/views/instruction_view.dart';

part 'instruction_step.g.dart';

@JsonSerializable()
class InstructionStep extends Step {
  final String title;
  final String text;
  bool? isFirst;

  InstructionStep({
    required this.title,
    required this.text,
    bool isOptional = false,
    this.isFirst = null,
    String buttonText = 'Next',
    StepIdentifier? stepIdentifier,
    bool? canGoBack,
    bool? showProgress,
    bool showAppBar = true,
  }) : super(
          stepIdentifier: stepIdentifier,
          isOptional: isOptional,
          buttonText: buttonText,
          canGoBack: canGoBack ?? false,
          showProgress: showProgress ?? false,
          showAppBar: showAppBar,
        );

  @override
  Widget createView({required QuestionResult? questionResult}) {
    return InstructionView(
      instructionStep: this,
    );
  }

  factory InstructionStep.fromJson(Map<String, dynamic> json, bool? isFirst) =>
      _$InstructionStepFromJson(json, isFirst);
  Map<String, dynamic> toJson() => _$InstructionStepToJson(this);

  bool operator ==(o) =>
      super == (o) &&
      o is InstructionStep &&
      o.title == title &&
      o.text == text;
  int get hashCode => super.hashCode ^ title.hashCode ^ text.hashCode;
}
