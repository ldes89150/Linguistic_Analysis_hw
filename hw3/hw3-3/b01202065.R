system("wget -N https://ceiba.ntu.edu.tw/course/6d0f76/content/Word_Emotion_UTF8.csv")

data = read.csv("Word_Emotion_UTF8.csv")
data

a = mean(as.numeric(data[1,]))
b = mean(as.numeric(data[2,]))
print(a)
print(b)
to_save = c(a,b)

write(to_save, file = "b01202065.csv")

