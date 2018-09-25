//: Playground - noun: a place where people can play

import UIKit

var myInterests: (likeFilm: String, likeNumber: Int, likeFood: String) = ("8 - Mil", 22, "Soup Chilli" )
var (likeFilm, likeNumber, likeFood) = myInterests
var secondInterest: (likeFilm: String, likeNumber: Int, likeFood: String) = ("Spider Man", 47, "Flench fries")
var (likeFilms, likeNumbers, likeFoods) = secondInterest

var tmpInterest = myInterests
myInterests = secondInterest
secondInterest = tmpInterest

var newNumbInt = (myInterests.likeNumber, secondInterest.likeNumber, myInterests.likeNumber - secondInterest.likeNumber)
