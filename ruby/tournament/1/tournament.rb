


class Team
  attr_reader :name, :played, :wins, :draws, :losses, :points

  def initialize(name:)
    @name = name
    @played = 0
    @wins = 0
    @draws = 0
    @losses = 0
    @points = 0
  end

  def won!
    @played += 1
    @wins += 1
    @points += 3
  end

  def lost!
    @played += 1
    @losses += 1
  end

  def draw!
    @played += 1
    @draws += 1
    @points += 1
  end
end

class Tournament
  attr_reader :teams

  def self.tally(input)
    tournament = Tournament.new(input)
    tournament.parse!
    tournament.export_results
  end

  def initialize(game_input)
    @game_input = game_input
  end

  def parse!
    @teams = [] 

    games = @game_input.split("\n")

    games.each do |game|
      name1, name2, result = game.split(/;/)

      team1 = find_or_create_team(name1)
      team2 = find_or_create_team(name2)

      case result
      when 'win'
        team1.won!
        team2.lost!
      when 'loss'
        team2.won!
        team1.lost!
      when 'draw'
        team1.draw!
        team2.draw!
      else
        raise 'unexpected result type'
      end
    end
  end

  def find_or_create_team(name)
    team = @teams.find { |t| t.name == name }
    if team.nil?
      team = Team.new(name: name)
      @teams << team
    end

    team
  end

  def sorted_teams
    sortable = @teams.map { |r| [r.points, r.name, r] }
    sorted = sortable.sort_by do |points, name|
      [-points, name]
    end

    sorted.map { |s| s[2] }
  end

  def export_results
    output = formatted_row(name: 'Team', played: 'MP', wins: 'W', draws: 'D',
      losses: 'L', points: 'P')

    sorted_teams.each do |team|
      output += formatted_team(team)
    end

    output
  end

  def formatted_team(team)
    formatted_row(name: team.name, played: team.played, wins: team.wins, 
                      draws: team.draws, losses: team.losses, 
                      points: team.points)
  end

  def formatted_row(name:, played:, wins:, draws:, losses:, points:)
    "#{name.ljust(30)} | #{played.to_s.rjust(2)} | #{wins.to_s.rjust(2)} " \
    "| #{draws.to_s.rjust(2)} | #{losses.to_s.rjust(2)} " \
    "| #{points.to_s.rjust(2)}\n"
  end
end
