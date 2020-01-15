class SalesloftService
  include HTTParty
  base_uri 'api.salesloft.com'

  def initialize
    @options = {
      headers: {
        "Authorization" => "Bearer #{ENV['SALESLOFT_APPLICATION_API_KEY']}"
      }
    }
  end

  def get_users query
    @options[:query] = query
    response = get_salesloft_users 
    users = []
    errors = []
    
    unless response.parsed_response["data"].nil?
      users = response.parsed_response["data"].map {|x| {id: x["id"], name: x["display_name"],email: x["email_address"], job_title: x["title"]} }
    end

    unless response.parsed_response["error"].nil?
      errors.push response.parsed_response["error"]
    end

    return { users: users, errors: errors }
  end

  private 

    def get_salesloft_users
      response = self.class.get("/v2/people", @options)
      users = response.parsed_response["data"].map {|x| {id: x["id"], name: x["display_name"],email: x["email_address"], job_title: x["title"]} }
      response
    end

    def get_test_users
      [
        { name: "brandon davis",
          id: '1',
          email: "sdavis@gmail.com",
          job_title: "scientist" 
        },
        { name: "steve johnson",
          id: '2',
          email: "sjohnson@gmail.com",
          job_title: "Data Man" 
        },
        { name: "carrie doggins",
          id: '3',
          email: "cdoggins@gmail.com",
          job_title: "Foreman" 
        },
        { name: "Jake Blaze",
          id: '4',
          email: "jblaze@gmail.com",
          job_title: "Rocketeer" 
        },
        { name: "Cassie Liande",
          id: '5',
          email: "cliande@gmail.com",
          job_title: "Surgeon" 
        },
        { name: "Natalie Roots",
          id: '6',
          email: "nroots@gmail.com",
          job_title: "Cop" 
        },
        { name: "Landy Richster",
          id: '7',
          email: "lrichster@gmail.com",
          job_title: "Fireman" 
        }
      ]
    end
end