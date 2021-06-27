pragma solidity >=0.4.22 <0.9.0;

contract CampusVoice {
  //variables

  struct Profile {
    address usersAddress;
    string userName;
    string idNumber;
    bool voted;
  }

  struct voteRegistry {
    address userAsAddress;
    bool choice;
    bool isCandidate;
    bool isVoter;
  }

  struct voter {
    string idNumber;
    bool voted;
  }

  struct Candidate {
    string proposal;
    address candidateAddress;
    string position;
    string post;
    uint voteCount;
    bool isElected;
    uint rank;
  }

  enum Eligible { isEligible, Rejected }
  Eligible public eligible;
  
  enum State { Created, Voting, Ended }
  State public state;

  enum Level { Candidate, Voter }
  Level public level;

  //store votes
  mapping(uint => voteRegistry) private votes;

  //store voters address
  mapping(address => voter) public voterRegister;

  //store Profile
  mapping(string => Profile) public profiles;
  
  uint private countResult = 0;
  uint public finalResult = 0;
  uint public totalResult = 0;
  uint public totalVote = 0;

  address public judgeAddress;
  
  
  //modifiers

  modifier condition(bool _condition){
    require(_condition);
    _;
  }

  modifier onlyJudge(){
    require(msg.sender == judgeAddress);
    _;
  }

  modifier inState(State _state){
    require(state == _state);
    _;
  }

  modifier isEligible(Eligible _qualify){
    require(eligible == _qualify);
    _;
  }

  modifier inLevel(Level _level){
    require(level == _level);
    _;
  }

  //events

  //event votedEvent( unit indexed _candidateId);

  //functions
  
  constructor() public {
  }

  function addCandidate() private{

  }

  function addVoter() public{

  }

  function startVote() public{

  }

  function vote() public{

  }

  function endVote() public{

  }
}
