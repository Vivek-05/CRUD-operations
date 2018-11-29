package com.ait.vivek;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

public class JsonConverter {

	private final Gson gson;

	public JsonConverter() {

		gson = new GsonBuilder().create();
	}

	public String convertToJson(User u) {

		com.google.gson.JsonArray element = gson.toJsonTree(u).getAsJsonArray();

		JsonObject jsonObject = new JsonObject();

		jsonObject.add("User", element);

		return jsonObject.toString();
	}
}
