from flask import Blueprint, request, jsonify
from .service import list_users, get_user, create_user,update_user,delete_user
from .auth import token_required

main = Blueprint("main", __name__)

@main.route("/users", methods=["GET"])
@token_required
def route_list_users():
    users = list_users()
    return jsonify(users),200

@main.route("/users/<int:userid>", methods=["GET"])
@token_required
def route_get_user(userid):
    user = get_user(userid)
    if user:
        return jsonify(user), 200
    return jsonify({"error": "usuário não encontrado"}), 404

@main.route("/users", methods=["POST"])
@token_required
def route_create_user():
    data = request.get_json()
    userid,msg = create_user(data)
    if not userid:
        return jsonify({"error":msg}),400
    return jsonify({"message":"usuario criado","id":userid}),201

@main.route("/users/<int:userid>", methods=["PUT"])
@token_required
def route_update_user(userid):
    data = request.get_json()
    update_user(userid, data)
    return jsonify({"message": "usuario atualizado"}), 200

@main.route("/users/<int:userid>", methods=["DELETE"])
@token_required
def route_delete_user(userid):
    delete_user(userid)
    return jsonify({"message": "usuario removido"}), 200