def F_Knapsack(W,weight,values):
    ratios=[v/w for v , w in zip(values,weight)]
    print(ratios)
    max_value=0
    fractions=[0]*len(weight)
    for i in range(0,len(weight)) :
        
        if weight[i]<=W:
            max_value+=values[i];
            W-=weight[i]
            fractions[i]=1
            
        else:            10/15=2/3=0.62*6.66
            fractions[i]=W/weight[i]
            max_value += values[i]*fractions[i]
            break
            
    return max_value
    
    
    
    
    
#main starting     
weights=[10,20,30,15]
values=[60,100,120,100]

W=50
F_Knapsack(W,weights,values)

