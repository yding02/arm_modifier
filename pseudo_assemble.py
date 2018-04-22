import re
NULL_INSTR = '\tMOV r13, r13\n'

def decode_instruction(arglist):
  # TODO: decode logic
  return 0
  
def zero_trail_count(n):
  c = 0
  for _ in range(32):
    if n % 2 == 0:
      c += 1
    else:
      return c
    n //= 2
  return c
  
def zero_start_count(n):
  c = 0
  for _ in range(32):
    if n % 2 == 0:
      c += 1
    else:
      c = 0
    n //= 2
  return c
  
def parse_instruction(line):
  # TODO: parse logic
  
  #temporary parse logic
  arglist = re.split(' |, ', line)
  for i in range(len(arglist)):
    arglist[i] = arglist[i].strip()
  return arglist

def is_instruction(arglist):
  # TODO: instruction logic
  
  #Temp logic
  if len(arglist) <= 1:
    return False
  if arglist[0][0] in '.@':
    return False
  return True
  
def main(input, output):
  f = open(input, 'r')
  code = f.read()
  f.close()
  
  o = open(output, 'w')
  
  zero_count = 0
  for line in code.split('\n'):
    arglist = parse_insturction(line)
    if not is_instruction(arglist): 
      continue
    instr = decode_instruction(arglist)
    zero_count += zero_start_count(instr)
    if zero_count >= 32:
      #insert null instruction
      o.write(NULL_INSTR)
    zero_count = 0
    zero_count += zero_trail_count(instr)
    #insert current isntruction
    o.write(line)
  o.close()
  return
  