function ret = cost(x, u, fparam, Cparam, L)
% cost vector g
% global par;
% global expr;
ret = [];
for j = 1:L
    A = fparam.Aw{j};
    B = fparam.Bw{j};
    x_next = A*x + B*u;
    
    R = Cparam.R; Q = Cparam.Q;
    ret = [ret; u'*R*u + x_next'*Q*x_next];
end
end

