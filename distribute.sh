rm -rf dist build context.egg-info/
python3 setup.py sdist bdist_wheel
python3 -m twine upload --repository pypi dist/*
