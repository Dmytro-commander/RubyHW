puts '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
array = [0, 2, 3, 1, 4, 5, 6, 7]
array.select.with_index { |e| e.even? } + array.select.with_index { |e| e.odd? }
puts '---------'

puts '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
array = [0, 2, 3, 1, 4, 5, 6, 7]
array.select.with_index { |e| e.odd? } + array.select.with_index { |e| e.even? }
puts '---------'

puts '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [1, 2, 4, 5, 6, 7, 8, 9]
array.select { |num| array[0] < num && num < array[-1] }.first || []
puts '---------'

puts '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [1, 2, 4, 5, 6, 7, 8, 9]
array.select { |num| array[0] < num && num < array[-1] }.last || []
puts '---------'

puts '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
data = [8, 2, 4, 3, 5, 6, 7]
data.map do |e|
    if e.even? && e !=data[0] && e !=data[-1]
        e + data[0]
    else
       e
    end
  end
  puts '---------'

puts '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
data = [8, 2, 4, 3, 5, 6, 7]
    data.map do |e|
    if e.even? && e !=data[0] && e !=data[-1]
        e + data[-1]
    else
        e
    end
   end
   puts '---------'

puts '7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
data = [8, 2, 4, 3, 5, 6, 7]
    data.map do |e|
    if e.odd? && e !=data[0] && e !=data[-1]
        e + data[-1]
    else
        e
    end
  end
puts '---------'

puts '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
data = [8, 2, 4, 3, 5, 6, 7]
data.map do |e|
    if e.odd? && e !=data[0] && e !=data[-1]
        e + data[0]
    else
        e
    end
  end
puts '---------'

puts '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
data = [1, 4, 3, 5, 2, 6, -3, -1, -2]
    data.map do |e|
        if e.positive?
            data.min
        else
            e
        end
      end
    puts '---------'
    
puts '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
data = [1, 4, 3, 5, 2, 6, -3, -1, -2]    
    data.map do |e|
        if e.positive?
            data.max
        else    
            e
    end
  end
puts '---------'

puts '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
data = [1, 4, 3, 5, 2, 6, -3, -1, -2]
    data.map do |e|
        if e.negative?
            data.min
        else    
            e
    end
   end
puts '---------'

puts '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
data = [1, 4, 3, 5, 2, 6, -3, -1, -2]
        data.map do |e|
            if e.negative?
                data.max
            else    
                e
        end
       end
    puts '---------' 

    puts '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
    data = [1, 2, 3, 4, 5]
        data.rotate (1)
        puts '---------'

    puts '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
    data = [1, 2, 3, 4, 5]
        data.rotate (-1)
        puts '---------'

    puts '29. Дан целочисленный массив. Упорядочить его по возрастанию.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, 1]
        data.sort
        puts '---------'

    puts '30. Дан целочисленный массив. Упорядочить его по убыванию.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, 1]
        data.sort.reverse
        puts '---------'

    puts '33. Дан целочисленный массив. Найти индекс минимального элемента.'
    data = [1, 2, 3, 4, 5]
        data.index(data.min)
        puts '---------'

    puts '34. Дан целочисленный массив. Найти индекс максимального элемента.'
    data = [1, 2, 3, 4, 5]
        data.index(data.max)
        puts '---------'

    puts '35. Дан целочисленный массив. Найти индекс первого минимального элемента.'
    data = [2, 3, 1, 4, 5, 8, 9, 7]
        data.index.first(data.min)
        puts '---------'data.reject { |e| data.count(e) == 3 }


    puts '36. Дан целочисленный массив. Найти индекс первого максимального элемента.'
    data = [2, 3, 1, 4, 5, 8, 9, 7, 9]
        data.index(data.max)
        puts '---------'

    puts '37. Дан целочисленный массив. Найти индекс последнего минимального элемента.'
    data = [2, 3, 1, 4, 5, 8, 9, 7, 9, 1] 
        data.rindex(data.min)
        puts '---------'    

    puts '41. Дан целочисленный массив. Найти минимальный четный элемент.'
    data = [1, 4, 3, 5, 2, 7, 9, 8]
        data.select(&:even?).min
        puts '---------'
    
    puts '42. Дан целочисленный массив. Найти минимальный нечетный элемент.'
    data = [1, 4, 3, 5, 2, 7, 9, 8]
        data.select { |e| e.odd? }.min
        puts '---------'

    puts '43. Дан целочисленный массив. Найти максимальный четный элемент.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, 1]
        data.select(&:even?).max
        puts '---------'
        
    puts '44. Дан целочисленный массив. Найти максимальный нечетный элемент.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, 1]
        data.select(&:odd?).max
        puts '---------'

    puts '45. Дан целочисленный массив. Найти минимальный положительный элемент.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, -1, -4, -5]
        data.select(&:positive?).min
        puts '---------'

    puts '46. Дан целочисленный массив. Найти максимальный отрицательный элемент.'
    data = [2, 5, 4, 3, 6, 7, 9, 8, -1, -4, -5]
        data.select(&:negative?).max
        puts '---------'

    puts '61. Дан целочисленный массив. Найти два наибольших элемента.'
    data = [1, 2, 3, 4, 5]
        data.max(2)
        puts '---------'

    puts '62. Дан целочисленный массив. Найти два наименьших элемента.'
    data = [1, 2, 3, 4, 5]
        data.min(2)
        puts '---------'

    puts '65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
    data = [3, 4, 2, 5, 7, 9, 1, 6, 8, 11]
       data.select { |data| data.even? } + data.select { |data| data.odd? }
       puts '---------'

    puts '66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
    data = [3, 4, 2, 5, 7, 9, 1, 6, 8, 11]
        data.select { |data| data.odd? } + data.select { |data| data.even? }
        puts '---------'

    puts '71. Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
    data = [1, 1, 1, 4, 5, 6]
       data.reject { |e| data.count(e) < 2 }
       puts '---------'

    puts '72. Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.'
    data = [1, 1, 1, 4, 5, 6]
       data.reject { |e| data.count(e) > 2 }
       puts '---------'

    puts '73. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.'
    data = [1, 1, 4, 5, 6]
       data.reject { |e| data.count(e) == 2}

    puts '74. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.'
    data = [1, 1, 1, 4, 5, 6]
        data.reject { |e| data.count(e) == 3 }
        puts '---------'
    
    puts '77. Дано целое число. Найти сумму его цифр.'
    number = 17
        number.digits.sum
        puts '---------'

    puts '79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
    data = [1, 2, 4, 5, 3, 7, 8, 9, 6, 0, -3, -2, -1]
        data.map do |e|
            if e.negative? 
                e ** 2
            else 
                e ** 3
            end
        end
        puts '---------'

    puts '86. Дан целочисленный массив. Найти среднее арифметическое его элементов.'
    data = [5, 4, 7, 3, 2, 1, 9]
        (data.sum / data.size.to_f).round(2)
        puts '---------'

    puts '87. Дан целочисленный массив. Найти все четные элементы.'
    data = [1, 5, 6, 7, 8, 2, -1, -3, -5]
        data.find_all(&:even?)
        puts '---------'

    puts '88. Дан целочисленный массив. Найти количество четных элементов.'
    data = [1, 5, 6, 7, 8, 2, -1, -3, -5]
        data.count(&:even?)
        puts '---------'

        puts '---------'
    puts '89. Дан целочисленный массив. Найти все нечетные элементы.'
    data = [1, 5, 6, 7, 8, 2, -1, -3, -5]
        data.find_all(&:odd?)
        puts '---------'

    puts '91. Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.'
    data = [7, 6, 91, 82]
    K = 102
        data.any? { |e| e < K }
        puts '---------'

    puts '92. Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false.'
    data = [7, 6, 91, 82]
    K = 102
        data.any? { |e| e > K }
        puts '---------'
    
    puts '93. Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false.'    
    data = [7, 6, 91, 82]
    K = 102
        data.all? { |e| e < K }
        puts '---------'

    puts '94. Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false.'
    data = [7, 6, 91, 82]
    K = 102
        data.all? { |e| e > K }
        puts '---------'

    puts '95. Дан целочисленный массив и число К. Вывести количество элементов, меньших К.'
    data = [7, 6, 91, 82]
    K = 102
        data.count { |e| e < K }
        puts '---------'

    puts '96. Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К.'
    data = [12, 7, 1, 8]
    K = 6
        data.index { |e| e > K }
        puts '---------'

    puts '97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К.'
    data = [12, 7, 1, 8]
    K = 6
        data.rindex { |e| e < K }
        puts '---------'

    puts '109. Дан целочисленный массив. Найти минимальный и максимальный элемент в массиве.'
    data = [9, 7, 4, 8, 3, 1, 2]
        data.min
        data.max
        puts '---------'

    puts '110. Дан целочисленный массив. Поменять местами минимальный и максимальный элементы массива.'
    data = [1, 2, 3, 4]
        data.map do |e|
            if e == data.max
                data.min
            elsif e == data.max
                data.min
            else
                e
            end
        end

