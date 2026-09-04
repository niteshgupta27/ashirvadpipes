class QuestionResponse {
  final bool status;
  final bool isSubmitted;
  final List<QuestionData> data;

  QuestionResponse({
    required this.status,
    required this.isSubmitted,
    required this.data,
  });

  factory QuestionResponse.fromJson(Map<String, dynamic> json) {
    return QuestionResponse(
      status: json['status'] ?? false,
      isSubmitted: json['is_submitted'] ?? false,
      data: (json['data'] as List? ?? [])
          .map((item) => QuestionData.fromJson(item))
          .toList(),
    );
  }
}

class QuestionData {
  final int id;
  final String question;
  final List<Option> options;
  int? selectedAnswer;

  QuestionData({
    required this.id,
    required this.question,
    required this.options,
    this.selectedAnswer,
  });

  factory QuestionData.fromJson(Map<String, dynamic> json) {
    return QuestionData(
      id: json['id'] ?? 0,
      question: json['question'] ?? '',
      options: (json['options'] as List? ?? [])
          .map((item) => Option.fromJson(item))
          .toList(),
      selectedAnswer: json['selected_answer'],
    );
  }
}

class Option {
  final int id;
  final String value;

  Option({
    required this.id,
    required this.value,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      id: json['id'] ?? 0,
      value: json['value'] ?? '',
    );
  }
}
