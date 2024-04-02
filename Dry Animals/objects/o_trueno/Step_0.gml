{
    if (trueno)
    {
        alpha -= .04;
        if (alpha <= 0)
        {
            trueno = false
            alpha = .5;
        }
    }
}