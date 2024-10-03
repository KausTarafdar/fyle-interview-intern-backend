def test_url_fault(client):
    response = client.get(
        '/wrong/student'
    )

    assert response.status_code == 404
    data = response.json

    assert data["error"] == "NotFound"