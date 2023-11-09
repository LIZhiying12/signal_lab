function X = dtfs(x, k)
N = length(x); 
if nargin < 2 
    k = 0:N-1; 
end
X = zeros(1, length(k));
for i = 1:length(k) 
    n = 0:N-1; 
    X(i) = sum(x .* exp(-1j * 2 * pi * k(i) * n / N)) / N; 
end
end
