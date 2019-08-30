.PHONY: container push

container:
	@docker build -t obliquo/py-pipenv:3.7 .
	@docker tag obliquo/py-pipenv:3.7 obliquo/py-pipenv:latest 


push: container
	@docker push obliquo/py-pipenv:3.7
	@docker push obliquo/py-pipenv:latest

