import sys
import shutil

print('Initializing python script')
# print(sys.argv[1:])
old_name = 'CreditOfferPJ'
new_name = 'OfferCreditPJ'
final_list = [] 

def rename_folder(old_path):
    index = old_path.rfind(old_name)
    # print(index)
    # print(old_folder[:index])
    new_path = old_path[:index] + old_path[index:].replace(old_name, new_name, 1)
    print('*** ---------------------------- ***')
    print('from: ', old_path)
    print('to:   ', new_path, '\n')
    shutil.move(old_path, new_path)

def remove_duplicates(x):
  return list(dict.fromkeys(x))

for entry in sys.argv[1:]:
    result = entry.rfind('CreditOfferPJ')
    # print('Module name index: ', result)
    # print(entry[result:])
    last_path = entry[result:].find(r'/')
    # print(lasPathAfterResult)
    if last_path > 0:
        destination = entry[:result+last_path]
        # print('from -> ', entry, ' to -> ', destination)
        final_list.append(destination)
    elif result > 0:
        # print('from -> ', entry, ' to -> ', entry)
        final_list.append(entry)

ordered_list= remove_duplicates(final_list)
# print(*ordered_list, sep='\n')

print('Final result')
for folder in ordered_list:
    rename_folder(folder)
