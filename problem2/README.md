Предлагаемый протокол передачи однокубитного квантового состояния с первого спутника на второй основан на квантовой телепортации (считаем, что нужно передать состояние со спутника A на спутник B):

1. Подготовить запутанную пару кубитов на земле (файл earth.qasm)
2. Отправить с земли на спутники A и B по одному кубиту из полученной запутанной пары по квантовому каналу без шума
3. Измерить кубит, состояние которого требуется передать, вместе с пришедшим кубитом на первый спутник в базисе Белла (файл sender.qasm)
4. Отправить результат измерения по классическому каналу со спутника A на землю, используя код Хемминга (файл hamming.ipynb)
5. Восстановить ошибку на земле и отправить по классическому каналу эту же информацию на спутник B
6. Восстановить ошибку на спутнике B и применить корректировку состояния: сначала, если c[1] оказался равен единице, применить гейт X (файл receiver1.qasm), затем, если c[0] оказался равен единице, применить гейт Z (файл receiver0.qasm)