import coremltools
from sklearn.linear_model import LinearRegression
from sklearn.tree import DecisionTreeClassifier
import pandas

primaryData = pandas.read_csv("HouseSalesInCA.csv")

modelo = LinearRegression()
modelo.fit(primaryData[["Bedrooms", "Bathrooms","Size"]],primaryData["Price"])

coremlModel = coremltools.converters.sklearn.convert(modelo, ["Bedrooms", "Bathrooms","Size"], "Price")

coremlModel.author="Gali Garibaldi Suift"
coremlModel.short_description = "Este modelo Calculara el precio de una casa dependiendo del numero de habitaciones, banios y terrenos en el estado de California"
coremlModel.license = "MIT"

coremlModel.save("HouseSalesInCA.mlmodel")
