require 'model_helper'

describe IB::Models::Bar do # AKA IB::Bar

  let(:props) do
    {:open => 1.31,
     :high => 1.35,
     :low => 1.30,
     :close => 1.33,
     :wap => 1.32,
     :volume => 20000,
     :has_gaps => 1,
     :trades => 50,
     :time => "20120312  15:41:09"
    }
  end

  let(:values) do
    {:has_gaps => true,
    }
  end

  let(:errors) do
    {:close => ["is not a number"],
     :high => ["is not a number"],
     :low => ["is not a number"],
     :open => ["is not a number"],
     :volume => ["is not a number"]}
  end

  let(:assigns) do
    {:has_gaps => {[1, true] => true, [0, false] => false},
    }
  end

  it_behaves_like 'Model'

end # describe IB::Bar