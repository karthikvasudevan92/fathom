$(document).ready(function () {
    console.log("Hullo");
    $(function () {
        $('[data-toggle="popover"]').popover();
      });
    
    $('.subs-checklist input[name=subs]').bind('change',function(){
    });
    $('.subs-checklist input[name=allsubs]').bind('change',function(){
        if($(this).prop('checked'))
        {
            $('.subs-checklist input[name=subs]').prop('checked',true);
        }
        else{
            $('.subs-checklist input[name=subs]').prop('checked',false);            
        }
    });        
    $('button[name=getsubs]').bind('click',function(){
        var getForm = $(this).closest('form');
        valeur = 30;
        hunterUrl = window.location.origin+window.location.pathname+'?'+getForm.serialize();
        $.ajax({
            url: hunterUrl,
            context: $('.result-wrapper'),
            beforeSend: function(){
                $('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur).text("Request sent...").addClass('active');
            },
            error: function(jqXHR,exception){
                console.log(jqXHR);
                console.log(exception);
            },
        }).done(function(data){
            $('.progress-bar').css('width', '100'+'%').attr('aria-valuenow', 100).text("Finished").removeClass('active');            
            results = $(data).find("#results");
            $(this).html(results);
        });
    });
    $('form#candidates_form *').bind('change',function(){
        var getForm = $(this).closest('form');
        var page = getForm.find('select').val();
        valeur = 30;
        var url = window.location.origin+window.location.pathname;
        console.log(url);
        $.ajax({
            url: url,
            method:'POST',
            data:getForm.serialize(),
            context: $('#result_wrapper'),
            beforeSend: function(){
                $('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur).text("Request sent...").addClass('active');
            },
            error: function(jqXHR,exception){
                console.log(jqXHR);
                console.log(exception);
            },
        }).done(function(data){
            $('.progress-bar').css('width', '100'+'%').attr('aria-valuenow', 100).text("Finished").removeClass('active');            
            results = $(data).find("#results");
            $(this).html(results);
        });    
    });
    $('button[name=add_subreddit]').bind('click',function(){
        var subreddit = $('select[name=subreddit_list]').val();
        var subs_str = $('input[name=s]').val();
        if(subs_str == '')
        {
            $('input[name=s]').val(subreddit);
        }
        else
        {
            subs = subs_str.split("+");
            if(subs.indexOf(subreddit) < 0)
            {
                $('input[name=s]').val(subs_str+"+"+subreddit);
            }
            else{
                console.log("already there");
            }
        }
        $('select[name=subreddit_list] option:selected').prop('selected',false).next().prop('selected',true);
    });
});