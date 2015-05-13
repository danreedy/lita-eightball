require "lita"

module Lita
  module Handlers
    class Eightball < Handler

      RESPONSES = [
        "For sure it so.",
        "So yes is it says Splug.",
        "No doubts do Splug has.",
        "All of yes, thinks Splug.",
        "Most likely not worst idea you has.",
        "As likely as Splug stealing you nice things.",
        "Splug say maybe ok.",
        "Outlook not un-bad.",
        "Oracle point to meh.",
        "Yesh.",
        "Splug hazy, try again",
        "Ask again later. Splug eat bugs at now.",
        "Better not for you know that.",
        "Oracle mad Splug, no tell oracles.",
        "Splug think you dumb. Him no answer.",
        "Don't make no bets on it.",
        "Probablies not.",
        "Oracle says no.",
        "It either way could go.",
        "Splug knows but him no tell you."
      ]
      
      route %r{8ball|eightball|oracle}i, :shake, command: true, help: { "oracle" => "Shakes the eightball" }

      def shake(response)
        response.reply RESPONSES.shuffle.first
      end

    end

    Lita.register_handler(Eightball)
  end
end
