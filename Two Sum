class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        
        //copy向量用以之后查找数字的索引
    	vector<int> copy=nums;
    	sort(nums.begin(),nums.end());
    	vector<int> res;
    	int front=0,forword=nums.size()-1;
        
    	while(front<forword){
    		if((nums.at(front)+nums.at(forword))==target){
    			for(int i=0;i<copy.size();i++)
    				if(copy[i]==nums.at(front)){ 
    					res.push_back(i);
						break;
						}
				for(int i=0;i<copy.size();i++)
					if(copy[i]==nums.at(forword)&&i!=res.at(0)){
						res.push_back(i);
						break;
					}
				return res;
			}
            
            //两数之和大于目标
			else if((nums.at(front)+nums.at(forword))>target){
				forword--;
			}
            
            //两数之和小于目标
			else if((nums.at(front)+nums.at(forword))<target){
				front++;
			}
		}
		return res;
    }
};
