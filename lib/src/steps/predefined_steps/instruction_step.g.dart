// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionStep _$InstructionStepFromJson(
    Map<String, dynamic> json, bool? isFirst) {
  return InstructionStep(
    isOptional: json['isOptional'] as bool? ?? false,
    isFirst: isFirst,
    buttonText: json['buttonText'] as String? ?? 'Next',
    stepIdentifier: json['stepIdentifier'] == null
        ? null
        : StepIdentifier.fromJson(
            json['stepIdentifier'] as Map<String, dynamic>),
    title: json['title'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$InstructionStepToJson(InstructionStep instance) =>
    <String, dynamic>{
      'stepIdentifier': instance.stepIdentifier,
      'isOptional': instance.isOptional,
      'buttonText': instance.buttonText,
      'title': instance.title,
      'text': instance.text,
    };
