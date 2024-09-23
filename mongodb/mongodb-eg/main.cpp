#include <bsoncxx/json.hpp>
#include <mongocxx/client.hpp>
#include <mongocxx/instance.hpp>

#include <iostream>
#include <fstream>
#include <string>

std::string get_uri(std::string fname){
    std::string item_name;
    std::ifstream nameFileout;

    nameFileout.open(fname);
    std::getline(nameFileout, item_name);
    nameFileout.close();

    return item_name;
}

int main()
{
  try
  {
    auto uri_string = get_uri("uri.txt");

    // Create an instance.
    mongocxx::instance inst{};
    const auto uri = mongocxx::uri{uri_string};
    // Set the version of the Stable API on the client
    mongocxx::options::client client_options;
    const auto api = mongocxx::options::server_api{mongocxx::options::server_api::version::k_version_1};
    client_options.server_api_opts(api);
    // Setup the connection and get a handle on the "admin" database.
    mongocxx::client conn{ uri, client_options };
    mongocxx::database db = conn["sample_mflix"];

    auto collection = db["movies"];
    auto cursor_all = collection.find(bsoncxx::builder::basic::make_document(bsoncxx::builder::basic::kvp("title", "A Corner in Wheat")));
    std::cout << "collection " << collection.name()
            << " contains these documents:" << std::endl;
    for (auto doc : cursor_all) {
        std::cout << bsoncxx::to_json(doc, bsoncxx::ExtendedJsonMode::k_relaxed) << std::endl;
    }
    std::cout << std::endl;


    // Ping the database.
    const auto ping_cmd = bsoncxx::builder::basic::make_document(bsoncxx::builder::basic::kvp("ping", 1));
    db.run_command(ping_cmd.view());
    std::cout << "Pinged your deployment. You successfully connected to MongoDB!" << std::endl;
  }
  catch (const std::exception& e)
  {
    // Handle errors
    std::cout<< "Exception: " << e.what() << std::endl;
  }
  return 0;
}