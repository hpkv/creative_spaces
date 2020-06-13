from django import forms
from users.models import Questionnaire, Reviews


class QuestionnaireForm(forms.ModelForm):
    class Meta:
        model = Questionnaire
        exclude = ['q_id', 'question', 'answer', 'p_email', 'u_email', 'status']


class ReviewsForm(forms.ModelForm):
    class Meta:
        model = Reviews
        exclude = ['review_id', 'rating', 'submission_date', 'p_email', 'u_email', 'review']