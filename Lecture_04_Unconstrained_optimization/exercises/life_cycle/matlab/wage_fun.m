function [res] = wage_fun(T, T_ret)
    % Return a 1xT vector of wages
    % input: T, and retirement age T_ret
    res = max(1.5,(1/2 + (1:T).* (1 - (1:T)./T)))' / 16;
    res(T_ret:end) = 0;
end