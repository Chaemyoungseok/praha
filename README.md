# Praha


## Run Training

```bash
# single run with default settings
poetry run python main.py
# single run
poetry run python main.py gpus=[0,1,2,3] batch_size=128 trainer.accelerator=ddp trainer.precision=16 optimizer=sgd scheduler.step_size=1
# multi runs
poetry run python main.py -m optimizer=adam,rmsprop,sgd trainer.precision=16,32 scheduler.step_size=1
```

## Start Mlflow Server

```bash
poetry run mlflow ui
# access http://127.0.0.1:5000
```

