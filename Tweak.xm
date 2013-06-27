UIScrollView *_scrollView;

%hook SBAwayBulletinListController

-(void)setTableItemToFloat:(id)aFloat
{
    %orig(nil);
}

- (void)setTableItemToFloat:(id)aFloat force:(BOOL)force
{
    %orig(nil, NO);
}

-(void)scrollViewDidScroll:(id)scrollView
{
    _scrollView = scrollView;
    if(CGPointEqualToPoint(_scrollView.contentOffset, CGPointZero))
        _scrollView.contentOffset = CGPointMake(0, 320);
    
    %orig;
}

-(void)_realertTimerFired:(id)fired
{
    if(_scrollView)
        _scrollView.contentOffset = CGPointMake(0, 320);
    
    %orig;
}

%end