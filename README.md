# Modélisation et Commande d'un Servomoteur à CC (DC Motor Servo Control)

Ce projet présente la modélisation mathématique, la simulation sous Simulink et la synthèse d'une commande par retour d'état avec action intégrale pour un moteur à courant continu. Une machine à états sous Stateflow est intégrée pour assurer la gestion des modes de fonctionnement et la sécurité du système.

## 📁 Structure du Dépôt
* `project report.pdf` : Rapport complet du projet en français.
* `Motor_v4_Servo.slx` : Modèle Simulink / Stateflow fonctionnel.
* `init_motor.m` / `parameters.m` : Scripts d'initialisation des paramètres.
* `state_feedback.m` / `servo_controller.m` / `observer_design.m` : Calcul et configuration des gains de commande.

## 🛠️ Outils & Technologies
* MATLAB / Simulink
* Stateflow
* Commande par retour d'état (State-Feedback Control)
