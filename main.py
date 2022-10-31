import hydra
from omegaconf import DictConfig
from src.experiment import Experiment


@hydra.main(config_path="configs/", config_name="test2.yaml")
def main(config: DictConfig) -> None:
    exp = Experiment(config)
    exp.run()


if __name__ == "__main__":
    main()
