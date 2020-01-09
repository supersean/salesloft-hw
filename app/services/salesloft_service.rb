class SalesloftService

  def get_users
    get_test_users
  end

  private 

    def get_salesloft_users
    end

    def get_test_users
      [
        { name: "sean davis",
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