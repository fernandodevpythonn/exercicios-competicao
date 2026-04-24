from flask import Blueprint, request, jsonify
from .service import list_guests,get_guest,create_guest,update_guest,delete_guest, checkin_guest
from .auth import token_required

main = Blueprint("main", __name__)

@main.route("/guests", methods=["GET"])
@token_required
def get_all_guests():
    event_id = request.args.get("event_id")
    guests = list_guests(event_id)
    return jsonify(guests), 200

@main.route("/guests/<int:guest_id>", methods=["GET"])
@token_required
def get_one_guest(guest_id):
    guest = get_guest(guest_id)
    if guest:
        return jsonify(guest), 200
    return jsonify({"error": "convidado não encontrado"}), 404

@main.route("/guests", methods=["POST"])
@token_required
def add_guest():
    data = request.get_json()
    guest_id = create_guest(data)
    return jsonify({"message":"convidado criado", "id": guest_id}), 201

@main.route("/guests/<int:guest_id>", methods=["PUT"])
@token_required
def edit_guest(guest_id):
    data = request.get_json()
    update_guest(guest_id, data)
    return jsonify({"message": "convidado atualizado"}), 200

@main.route("/guests/<int:guest_id>", methods=["DELETE"])
@token_required
def remove_guest(guest_id):
    delete_guest(guest_id)
    return jsonify({"message": "convidado removido"}), 200

@main.route("/guests/<int:guest_id>/checkin", methods=["POST"])
@token_required
def do_checkin(guest_id):
    user_id = request.user["id"]
    sucess = checkin_guest(guest_id, user_id)
    if sucess:
        return jsonify({"message": "checkin realizado"}), 200
    return jsonify({"error": "checkin já realizado"})