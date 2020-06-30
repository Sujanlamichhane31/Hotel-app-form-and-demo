import 'package:flutter/material.dart';
import 'package:loginform/pages/Login.dart';
import 'package:loginform/pages/Registration.dart';
import 'AboutUs.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.cyanAccent,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFhUXGBgYFxgXFxgaGBcbFx4XHxgaGhgYHSggGB4lGxgYITEhJSkrLi4uGh8zODMtNygtLisBCgoKDg0OGxAQGy4mHyYvMC0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQMAwgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAIHAQj/xABFEAABAgQDBQUFBgQDBwUAAAABAhEAAyExBBJBBSJRYXEGE4GRsTKhwdHwI0JSYnLhBxSCkhUz8RZDU6KywtIkJXOT8v/EABsBAAMBAQEBAQAAAAAAAAAAAAECAwAEBQYH/8QAMxEAAgIBAwQBAQUGBwAAAAAAAAECEQMSITEEE0FRMmEUIiORoQUzgbHR4SRCUnHB8PH/2gAMAwEAAhEDEQA/AJkJBjJpAEBy8YlyM6B/UH9Y2mznBZj0LxxbnouijK2siRtKctZOUgJoHqyGp4GLEO2WEb/MIfihfwEc/wC0qnxUzq3uEL1eynx9Y6UlSOW3bOoTu0+FVLVlnJfKpgXBtwUBAnYrGo/lkAqAIcMSBYmObqjxArB0qhdbs7cnFJJ9oeYiv9r5oPcAEFpyVHkACPjFCweEClFRZh8INlzytTPrSJ3XBar5OkonJAD+A+URTsehHieBilpxM8Zld4olLsS3svUeUFHaZITnJPLUPACroKwC/wD189f3VJRlPFgB6xasrg10iljFNUCvHlWN5W11iyvDiODaQXuZbFo2r/kTdfs1ehivfw8A7hX6y/kIjxW3FrlrQyd5JTcjKSKnV4X9mdpHCoUlcpagVOCljdhxg+BXymX8y9WGnl/oYF2sj/K/+QeioVf7ZYcHeEwf0gjwYmMxHaGROMsS12U5cFNAD+Ic40UaUkOAnroLeFPGJMUn7NQrVKr8wYhRtKVrMlhvzp+cR7S2vIEqYRNlkhCqBaSbGwBrC0HUjkAckRshRDDm8aILWgjF+14D0iz5ojFWrIXbyjWPVWjfDAEsReN4sCVuj1a3fw9wjbvfs21eIiI0VGqzW0etGRMAjifKMjag6C6LkitBAJw7F0hjxFD5iF03aU0MXFRrLl3/ALYLGPX3alFIcP8AdIHuIjgj08oq0z1JdZCW0omT8GFKKlB1G5NzEZ2anhaI8PttZIBSnwzD1Jg9G0uKT5j/AMYMo5Y+TQyYJ+P0QErY6Dx849TsFIL5j4wZN2mUlu7erCl/SI9o48lgAEuztGXftegN9M02lv8A7C3EmwTaMw0/Rq+vCJ58qgPMfv8ACBQMpr9W+MdWnY4Hk3C5eILitCW6GNcaa82H16x5KlOWNjT5GMxAdKCbnMD/AEqUA/lDaULrZmGxChzjJs40Iv8AKNZAYvw0gsyHBAFbjw05/tC6RlP2DonKWHDuL8YOw808XT74DlySlYayvUaQwRLeobeYjr8PrhGUQuR5OkoUGWl0moUmjHgeH11hZjtkMklG81W1avnp5w3w5o2hNjx1BGmnnGwIBrQpY9QzHzEGq4BafJUpkopBSRUGIWi04/Z6V11BqONePnCXEYIIVfn5xlP2aWNtbDTsx2XGJTnVMypchgK05xZp3YPD5cyp0wML7rMIUdldvycPK7uZmcElwlxXpFnl9rMIsZTMAfRSVj1S0CV3aDCkqKpt7sQqVLMyVMzpFSCGU3LjAmz+xuLUQrIE/qUAYvG0NuYdcpSUzpZNGGYOd4c4aScVLNlpPQg+ka3VGSjqs5xP7DYsWSg8gsP74r2OwMyUvJMQUq4EX6cY7YUjNnc2Zqt1gCfLSrEgkAkS6EgUdR+UaMn5NOKZyIYOZ/w1/wBpjI7eIyNrN20c52fNkzFpSh1EEKbKSaGtBeC+0EtEszJaKiWspmOCyHLJckNUwl2dsCTODDFBC2JyzZMwJpwWgKr1AgTFbHMsEKWBViwVlPBi1RqHEU2UNJK3KeokkoQTQpHMkD1hnh5YcWLVvFeGDDf5iPNut4sBXmzTN0bstIyl6JSR61jnlHc6YydWaY9QzBuf7/XKF5DkdXg2bUJPh5hvVoH7lyOYcdRcdfmIaKFkyXGkAIrQu/Iu3oUwPNAAWeAA8WJ+IMazFOFJ4D3HUe/yjeSXlzP1JB6Hdixzm8hLKAPIjofkWiKeneUngpvBWY/90FzTl7pTD8J8m95rEU5H2p5g+4E/OMYIwUkUB6Ea/TPBEwjpW/BmLtwF+g5xoiYz0qDL8lBl9aE+UaJLqTwcBXRwPR/IQAmyk0pTKfLh5e+CMOQ5Hj1BD+BvC5E5x4fCvoT5RKqYyUKFyD/yn/XwjBQQFh66ivg7+YKvIRDM4GqgGHP6f3x4lQzECxyqB8Kn3RvPXvJVTgR0NfX3xjGCY4Z6iv14wJjcNnSFWIHuv84mnAuwa5A8FfIRrKJKfE2vVqeLQrQ8ZCnFSgk30B8xEfcl2114w42jg0kguzUa9ojwuImSczJlTAbiYnNbgaKHgYCark0rvgCly20jdhwjXETiSTkCQdEuw6ZiT74Feppo37wFC2Hu0uAxOJWPZWodFEehiaVtKekuJq3ZnzE04VhaCRqY2E08YOhi9xPlDj/HMV/xleSf/GMhV3xjIGmQdcS07K2p/IzZqJ6M6t0HKQQKPTNe48o2xWCnYkZ5CczkqOjBVh9cIV9pJomYqepBBBKSCNd0RfexE/LhvZFTRuAA/eObN1ThiU/Ox3Y+hjLJo8b/AKFLOwMYmqpVPPziKS3dlmqbdDUe6OrnaKWNLA6hrHjHH9nreXW7W8B8vWF6XqZZ09S4B1XSwwNKN72bCzfQ+qR4lbNyU/R7jp+0aJWQWv5uDBUvD5uMdnBx03weTkgnOmhdwef3kkc/fEcmWAFpDgKAIHAh7eFfAQykbIWbOePCCkdnlGoFRyP+kbuIPZkxJMkFQp4dfr1g2bJClBTVYe8fu3hDOTsmak1lnwhzgthFQDpZvD0+qwNYViZW52zlKJIsSPdmHoY8k7LVoC/DT6F/COiYfY+UaQVK2elNgIV5B1hOZ/7PKyuRaPJOw1kAM1fWOlzsGlmiM4QNaFeVjrAjnUzYi0gcqdfp4Fm4RQDnQ34gX9BHSJ2HDNCnG4EFJYB+cFZBZYUc8nFWYt9cevWJQrhRtLePv98H4nBFKyDQjh7m5GIJiN1rPY+qX4UPh0it2QcaYr2n3lOFbU1gVE9Y+RFILxiikJ1cv4xisIvVv7v2gP6ga9C845YNh5NBErF03kpL8Y9m4BgVZrB7xFhUZlBNnhqTWwm6Nps9Iug+BjTvEmz+MHzNlg/f90YnZ0pJ3ph8h84ycTPUA5BHkWmVsCWQCFmoB018YyBrQdDKkrEMT4ekP8DtyaJHdJQojIqqXexq4s0VmapyTxMEy8WrJkzUZmhMmJSStHRDqJRb3Jtl7QmIXmzKO6oEZi1QQ5c84P2eh0vyq2jv8XhLh5hCr6GH+z92Ukge05L+LfPxMNKKTsnCTapsml4N2vf6+ucWXZuCSAzfvCrBocuTUe76MWbBppEMr8HV08VyMMBh0g2hmiSDAuCTQQzkCJouzWXhQ8Gow4GkeSkwbLQ8MkTbBskaGWYPKQEtrHgPKDQNQsmSohWiGM9EBrECgpgE5JgUphhPTS0BrTACVvtDhMwCx7SfeNQeoeK/JSFU4g+bUHiDFq2nqPo8YruHTlKhqPe5FfeR4RfGcmbkR45H2Y/JlfxJ+vGCcCuWsHILX+jEPaRWQAD7xr1AA+usQ9nB7fURs0fw79Gwv8RKuQ7aSAJS6C0I9lrAmJzFgxBh7totJX9axVxNBDNpA6beDXsPU7TT9FuXgEKq5rwJhBtbDJlzSAX3Qb1F6GLJs5P2aB+UekVzbSh38xzoPQQnTSfcabH6mC0JpDjCztxP6R6DnGQHhljIn9I9I8h3llZJYI1wVtSWjDxEX5GAlapSfCPZ2xZCkn7MD9NIWPVRfgrPonHyUCH+zsTmRlN0gEdH+DgeMA4TZRmLWAWSlRFbw+2ZsMIV/mEukpZuNveBFZ5I8EceKXPgI2JPzKV1i3YIUikbEllC1ONYu+zDT61jmyfI7cO0B1g0wxkmF+GFGg2XGQzCkzBBKZ0ApiZKTGsWidU8PrrGCcOflEMuW8TpktB3A0kRqX1iNYgkoiKdBBYBORSAptoMnTgYCmKcQAiDaSr+cIsQps/h4ipPpDzbuGUE5k1a4itpUVeI+D+oiuM5syFfaxO5LUxvXg+VNW4khRiLswpzM8PjFz2fh0LCULAUKhQUHo262r1Jf5RXZOzxh8VNlpfKQlSXuxenhBy/u2hcK/ETIu0RaQrqPWKohVYvc3Yn80QFLyoSXLXJ+ENMb2Xw+US0S0pTkO++/m0cm8L0/wB2A/ULVIWYAbiP0iKhtxf28zqB7hFwwQaWkcB6QHL7JZh3k9Ss8xVEobde2Z7xLp/m2yvUJuCSEUjFMlI5D0jIcL7DzQSBMSz06RkX0xIpzGktVYJCnECJSYLSC0cEUejMr2ygM01vxqhmmhHWnXSEuyMSkLmgqA3y0Ov5tFBmT5xeUXqOeMk4nuKQEqCg28pvh8osWy16RXdpKCpTpI3VJUfP4uPKCTjlp9gVZ3NgPiaw0lwDG6svElVBBQUzRzg7RxIZW8z6Af8AcWiJXaLFBgFKbR0V9IZY2B5UdTQsOHgozRpc0igbK27iFAFSSeiYtGBxfeJBcO8K1QylY3M1ngLGdopcoF6s3E3alNaxOuU4LmEWL2eFVryA1Navpc+cGIshfjO28wnMlGSW7OqhN7DUWrzsI2k9pBMpmzfpcX4n9h5xBL7Kid3iiaBBZ3JUQDRIJYB9S97axXNlYGYJqQjMk5jmX3aMrEoykKBexUSN1mF3i1KjnlJp0WpS5gqlx+oVHiLxmAWt2WG6l2+jBGzzOCymbvAGi6hKhoQ5cHkfMwxm4ZJrbx9BEmkWi2QFL+UUabJCJyk2AJbmC7Dzfyi/olMIofaxWSc41b4xoOmDKrQVJkTJjoQWURRQJBG7ldxZqfRinCRMwuLCJxdRuSSXCrFzHU9lbLCZSSVEFSQaXDh7jnFA/iiR/NS0uMyZQzNxJJit6m4k3DRFS8lYx+OUqatSVKG8WYkWtaGWG7XYtKcomvwKgCoePzhHJN7NrHqgHo/jFUq2Od7/AHixI2wpOGzgvMzM5rU1JPhE+A7bzEpZctKiNQSnzDGKotVGBo7xt3dKVhI41G/qPLJKTVeEWVfbac5+zl/83zjIq8ew+lEtUvZf5c0QWqYMhjn/APiU3RZ90FSttzwGzA9QI5F0zR3S6tPwC4zKJyshJD3PHX3vAk25jcPmc8XMazKktHWlRxyepN/UsfZ2X9mtz7eZIGpyhJeLNIwpUEKFBlD89YqGxJxZq7in/pWwPkW/ujo+xJW4BSwHGOXLyd2BLTse4xSJSASKqFqueAHAl7mF+08LiQqXlK1JVkUtMhgQnNvJSshyoJZiqj6RY1YEKAdnSaU6wfh8PyEGMqFnjsVbL2cpMnfCxOdnzZklIAepU9FZm8HEeAKlzUE0KnBHFmY01aLGZfGK/j1AzUq0SWHxMaUrQ2OFD9a92IkIBSxD0bza/lEkuqYikLZhE0UkjRGEBLkOdTcnnWDkygAwHurEiAGeN84tDqQjjYMJXKMMtrQWYiWmAzUL58UXtXh8+LkJ0UUv/SXAPW3jF5xdIqmNZWOw4uxJPgCr4RlyCXBcFSgyGs49xEcS/iEsnHTXP4f+kH4x2lCydLFxFH7e7PlKkzZpQnOKhWt6V1h8bqQM6uBy+V8Y2X7RjpvZ3s1hTIlLVJClKSkkkmpI6wbjuzmDof5dNS2648bxZy3ORQtHIFmsSLsGjoOL7ESFzBlK0JYkgF/W0GjsNgwkZjM4De18BGc1sZY3ucwEZHSf9hsLxmf3D5RkbuIHaZTD2fmM+dHnEY2PMdgUP+oQTM2hmAFaEFqtElVEKAZg/rHPryLlnc8eF/FP8wBexprsw8FCM/wmcB7B8xEveofMWDDzPziI49rQ6lkf/n9yTjhXv8/7BWAlzJS0nu1FPsrAeqVUUKatUcwDpHSdiApQh71Sr9SDX3EHoRHOMFtNJCklJzM6S9A16dKRb+ym0M6VJcl0iYHf2pbhY8UhR6hMTlqe0kVgoL4Mu0qDpbCFWGnOBDCQp4VFCdZcRXdoJ3m4kRaEIekVvaABxIANE08SPgPWAwrkb4c7kRoLFjaDcNLDVNGgPFMbQUBtDKVYRvkeAcICRS404wZh5z3vBAe920RTFQSowDjFsHgiti/aM4ARWthzBMx78JayOpyj0UfKJ9t44Z8rkFgQzGlTbWnpCrsnjpcrFEzCAnu162Lpa1zWGSJt7l9xZCElRYBKXJ5C8cz2/wBoZOIw8xEsqzKs4I15w17Z7bViJZkSHymi1MQ4f2Q9tHOoikIwRSDUboryjLbg0/vbeC97E2zITJloMwApQkGhuBXSDv8AGJB/3qfMRz6Xuiopx6xIgk2ST0gOcvRljjXJe5e0JRU/eItxHzgxGMSQWWkxzjvhwPlGJnJgPJL0ZY4rydA778wjyKF36OIjIGt+htEfYoweLmKU2bQ3A+UHBK1BIS5NHbWlYWYKSsEqymxanG0WLZE0JSAQpBZqj2jDZKjxQMOufybF6tmKDqEsnUPZ+JgXFFSGeWiwunWL/KxWWS0xKXqb1YUoPOKttDEBSFkgtwF26m0Qx5nKW62OrLhUI7OmJ8NigSXQgBi5SGLcId9nMamWkFAykLC0g1JDNMD62QoD8qrvC3DGUUKKZZBs5L9aRBtR0BKWy1fnRmi+0nVUcrm4q7T/AIHT9m4kKqm2nT69Ie4VUc42Ttdu7IsoMdACkB+jmvjF+2dOzAEcIVqikZWOhMYRUNoylpMyqQcylpUag5i+UsXFS3lBm0ttBJUkVy3Oj8HJHBtYr+InqmLLulnc1JeqUgFvxPQVoYMUZySQ+2RtlakDNKWFWKWfxChRtaseUTz5iScxAdi4KlZQNAwoC1Sa+kJMMVJWgXyp4j7wBPIMMwfgekebOnFM0VNSVJd9QwFXNgBz6xWkRt2WPZePAOVmv95wW4nppDJWLlktmZQ4X101sYqwksopdmcByczgAC5qndUGOgjaTOUAyxmLNmIZTi1/a9ohiK7rawukZzLVLxHMEcR8eEBbYnFKS1ddeunwhfghlICSSTQpLgVuoONaG93hjtab9m5BokEkXDuAfP4wtbgctij4nFZjYslVR1bKQbF3A50hPhlIM9JJ3VG/nl82HvhjiMKQovRLVBL7wBd7FwoKSOLg2MK5krepWrgWNnP/AEkxRokmTY5cwLEtCTlK8xY0q1xrxiLDSMwxSspARKzAE1U6tG4kQ+UpSAEF73GgPPhC7YM2YnvCtRKFlgniEks3KFjKkGcbYFOwa/5dSyk7olBtQSpULEYqYPZSpOu6GqItU3BrmZnBAVlUoOLJcj3mIT2eAD5iOvOFeRLkZYpO2hBg+8XnSUKKiN0BBUSXrYQRs7ZswZELQoK79NFAg6aQ8wOBTKRNVmOamVQJBS7iihUW0g/YG0pcudJXM38sypK1LKjfeUp3pxiqlZFxauyRf8MpxJPf4atf85OvhGR2MdrMN+Jf/wBUz/xjIv3Ye1+Zz9rL6f5HANmYhE6U6Q2RW+5o9xlAFABxeAds7QCZjAOQzcibHnE/YSTJ7tferyhaygsCopGR3YaPTxhX2mUJuKlmUldUywwScxIuQBW3DhHnLCu7T4PXfUPs7c+S0YrZ74XvZqw6wvXeBSlX3eFIpmxpxJynWtYv0zBqyhKnzTCsozu29Sr9Y57h8KpE1ctwSgkEi26WLeMGFU0DJeqLHGBwoGZgN2rcYZf4dLmKeYE/mJNOgj3CzloCJSk5XBWZmWrHiW63hNt5akLIBJRx4mJOMpSq6LRlGELqw/amz5aQrulA5cqgBX8RLDwEWbsxjD3SmplB14ACpNmoY51snFqM9ISlSsxyskEqYirJFTRz4RbdhYgyZpSQWzVd9TSmlXLdY6Y43GNN2cksqnJtKjxaiZeaoKbKOZ9QPa1ubO7QTgsQnLlzgAFLVr5mvy40h9gsIglebeDukEDW/wBcI2xCQgFWg04dIOpBjG92A4VSAQSgqLZSySHFDdq2bpBWHlM2SWxAABWXpT4h48kbRls7Ahn5txb6fygtG1asALtRqOCb3LBnh0PqgjROCmEuVM5J8y5Z+kF4TZiNQ/XXwtAuExi5q2IZNGatgCrwtz8ofy5bCEkwWn4IkYNKDnSGozeBhb2hnMnKWqktaxAFyL6+PAGHK7fV/oP4RU9q4rOsJILFwPBQBA5jMeN40NyWTYC2kg90kkAEhwwoAoocpcOGSQeRrpCLY0nvMQkJTmVmAAGulK8T7zDfbWLeXkUXYCWCLuGv5Ani8WP+E/ZwpScVMTVT5HdgkUfm9egA4xVRsg56XYb2h7MpVIQlT5kMVlL7+qga2J8nMUrFrCMoTly1ICbpagDx2TFyXBjj+L3ZqhL3khagHOYEOWo9eD3pGli32DDLw2ShchUtK5k1phJDAqcADVgSXNPHlEWOmzVMhCFLF7g0sB74tUjAyl7JxBk5e8VMlZn9tIC0lKU01cseBPBobjB4REvdk55yUzFlE1UyglkBgJe6SSpPnWJrBXn6jvqrul9DmaMNiVBYyAUAbXVgQYFwmFn7uaVmPeMAmgBUBl8SdNYtWP2ombKmTES0SlSlLDAFL5QkneCnUSSwHprSsBiTNxEkFTjvUKy6PmEJenco/vpI6kMBiv8AiTv7JfzjIaLmVMeR5XfX+n+X9D0u3L3/AD/qco7ISBLlvmBLKUC2Zi1Eng/GJdoSlpxEmdJLT5YBYuEIAcVKSDVzYw42JgxIl5UJTlY5nGYqJ+8Xs31wiWaksMwZ9dY6ZZnr1RFhgXb0yMwpzIILqdw5JOVyScrndDk0ip4nYxlzSUl0qrxIi0qOUgAkUo2j/GNJgSCSRRvS5iUZTTb9l8kMbilXHAr2xKkrMtEucG3UhOY71ATnJAo7UI0hb2twSVSe9SEpEteRVaqJYMkcNXgbZWxlYmb/ADCwru1THGUsSAdDpSjxae1WxkTJeVQyKS3dBJpXjxMdU8sYTjv53OHHhlOEnXjYpPZNE5OJlTZLApV7SnCQ4INQQXY6GLh2iwAYTUFyCXryL05EDwgrCSUSUIQlAJAAS3tE/O8eZlFDkjKMxUw5skPxJpAl1E3JVx6KQ6XGoNPl+TXYu2AQEKO+XJ60BfhVosaEA04xQ9r7JXLnjIQSQVMguAwcsQa0Pm/CH2y9s7yUqIctSrgmrV+j5gX+W6OVXHZjbFbJlgBSaEUANta8uvxaE6MApK0gOXAZg34sxKdNzTQEB4Z4jGhainRm11d7VoxfpGuLxZRLK0kZiWowNc5CXHAi+rjlFIWLk0+BzsyahLJADkCru+UZXJ0LJ8S/CGCpg4xXziSoJCSHKGALi+XK71fMUlzwa8AYra9FEukhwWsFhKja7KOTxH6ozhYvcSQ427tFMtBctQl6aNx6imvrUFzyJjsHBzIrQlSSFCnBJXrXKngBCzau2jOMxFQneSeIqAHI1+Iiw9k+y07GqDumUlKSpehDqDJ6sdYrGFHPPJZt2V7NLx80ZhlkIqtVnN8qRxqC/TpHZ5OETLQEJDABhb4CNtnbPlyECXKSEpGg+vpoJIiyVHM5WVPtltDuJBy+2t0Ia4/EfAe8i8cjnSbANmAOVOV8zAZn4HePCxiz9t9sd9iFtVEsZJZ3iDfMph+IuHD7oTxrXCTozFmauYNcA0GtwIajJm+CxK5SwQRcuDZQ4EHmL6UrxvOxtqYWcMOe6UuahSh3QKACmaauSR3lWNeGjxz/ALkhyovUgO4dVGD1IICnatctLx4QUhyovcAaDeseRHSlC8I0OXvAYhUlO0AMLhpYPfTCJym7sMN0qAUmYCA+RxrUNHJ+zKHxcj9afdFywPaefJOahIzpBUQcwISVAg3YkGo82hHs+TJlTkTEggghTEgir6MC2vlEMyk4NL6lsVKSbfo6DPxW8rqfWMiszO0SCSWNS9h84yPKXR5PR6/2vH7N8RjSlRQht4MRy+ETZxZvZvFanT1d8SKB/dDSViqrLgAhwTFOyvBu+/IU+Y6Auweg89I8xCXQsUIyKNKu1KQvE9gkuDYnR/lSFm3O06pKmkgAlMxNycmaxD69YfHi1OhMubSrHuGxCZUmVLCrSwWqHNKA6dTEWHxve5ahkkEu5KlHQckjziv4zFIyS1CpKGI8ssD7G2iTMCVCjkuASQA+gg/Z1LfyL9qcdvBbscCMrKystnJ48OZiPDz82VMsKK1ryCWlwDlBKS1iAxL6VNIXdqJpTJlqUSEzFPLJDZghsxH9w8xAXZedNGKkzRv9yrOUqtl16UJY6FjpDRgl8hZZZP4F72dgVrIStAE1inLcg/er4V6RWe2mzTLWJiWQse0DQ3y1Gh16EGHmO2oDMlS5QzLmrUsd0olUoJLhLBnLWNPZPhHtOUraHelKytYLBSgxUyUsSBbUdBDOOmnERT12p8f8lc2XtIitMwJSBU6KzE8X3fOD9o7QQAoOWJJb8JIIAFN7cBF7tWEE3BzpSshBSoFi4e9/MeYhxhMIqcvfUGDeyktrRqlQY6vYR0xkmc04SXkLk7RQUlRW4lpSEgOKkJSACzgcD+e1DCraRVOLjeFXKQ5UV5SQGtQswD15w/w+wZKQGTalXuCGd7kkVNqcq3TsX2dBUMTMRlAJ7lHIABKyP0uwPI3rDx3exGey3Ym7GfwvCkpnYz7xzCSPuuzZ1auLj1jrEiSlACUpCQLABgI8liJRFjnuzyEXbPbIwuGUv76txFrqetaUDmvCHxjk38Qtrpn4gygp0ymSAHJzE/aKYFtAHP4CBeCjMrCZVLABnSxDVq4YUNE8T7zGlKhILGtWy9SG41rQMkgxHimLpKUpFgWZQ1AUXZgrLROoNbGJMKoZVJICnG7Y1Jd6FiXSG+iMYhnqGUZqkeySpiXc3UeBazUFrmGdLy5gbO9Cdakl78OdeFZlqBJCkhj+FIqKFqF2DeGaBJ9RShVRm3RcKYWuFgkh+V4wxBmzKNCnx89Kl/lpHkw0JYuakMaWqzUoxpbnptKLMC6hq70KsvDXSo4NGwlb4GZmLg2AcgKUSxKrGz8uasZGDEH8Xp849iH+bUKBRAFmTSMgUERYxWVCSJylTFVI0EQTMXNT98gEMRxBuI9l4YFd6CN9rSAJgALu1ucc9q6L06bse4baSpqc62pZtQmKpjVKKiVXJc+MWCdNEqVkFywfgBfztCmfLLE3eJ4nTbKZVaSI5WPWnKaEJIoRdtIKx+1e9WFIlpRS166mAVkZRSJcMgUa9Yq6q6Jpybqw9GNXPMg4hf2cncQGOUAVNOJLOYfYDEHDyZ01h9o76Fq5QPOEuzXmKlpUPs5T0Grlz1JLQ32zMlryJUckurngWLe9hHNlanJQZfFcIua8Ew7czZuOk42VIlS5kpCUBAcoUQhaVEgNcLUG0AFS0Puw+0PtylQZa0maeG6sJdtKrPlFD7N4cKnqyKoknK9yKgdKRZdl4jLjsOpJBSrvJVOGVw/9SQerxd25v6Ek1GC+u38DrG1tgysWgEgCYn2VN7lcR6aRUVbFVKVlWClQqBcabwIZxz8y8XjDYpKUZ1KCUpTmUpRZKUpFSToAI5j2w/iPMxCu7wyRLlJO6tSAZq+e8CJQPADNZyKiLadW6JLJpdMunZ3ZAmKBUl0J6kLJ0Lu44uToOMXyVL4xxTsd2+xUhkTZffyn5JmJf8KqJVUksrj7QEdh2LtmRiUvKWCQHUg0Wl/xJ4cw44ExSMdKI5J6mMkiPRGCPYIgt7RbSGHw8yYSAQGS+qjQU1qY4TOWXJqokuQCzknUsXsaUsYv38UceVrRhwRlSMynZyog5QHp+H+4nSKDJmqKlFQZPNnIoATTeFQLfevWGAbrALkEO7hgwcgUDBVhV/XWBTVSVFgxILBIYAJpUA8HrxYNHksFg7CgYs9W9kmlWFuWrlvJYdypeZnBGYgPoAGBOVbPTjR3gBI8oFSxVuhgAUlxqXralbjlEU9OYApq1WUS9GYtxAI9/BoMGYGjghSi5fdZgXNHqS7mhbjAuLWTuNxZ2ADqDi5fdTYG/HXBNpZA3A/Upa4pcaMOVI8Qkua2SC7G9g1dRrEy8Oxq1kly1lMej2b5UiMzEuTX2S7tUAhm4boTXW8AJ4ZT1AppvfvGR4ubMc3vqVD3FTiPIxinzsWLpDQTspPeTM5un6EL5gp5ekHbNn5JcxWukcuSNR2OrHK3ubY6bmJOgLQNKxBUQg2dn4CN8LPJlqRcOFeL8YEQSFFucGMVwFt0pew7EyUFgk214xHLQUmh5ecdV2X2Zwf8klapYfu8xUb2cl45lhjvlSEFScxyj0jmxZtdpXsdE8Olp7bjMKGHkubn3k/KB5qVYhCEIDIT7UxVEuW11rDCbhgSkzAFN9yuV+Kjr0HOJpywlDhi33QAAgGzAfVItDF/mfJGeSrS4AdkpEtRTLBIA3lNVRVQBhYChYcIaJQUqw6wCEInS639t0hzpRVuRBtRbshCSMyixKifIUv0PV+sb7VV3aPaSWIUCBvbpSoBR6ptcMOMdEVcWc83UkW/+Im2WkycKkl5ie+mt+BJKZSehWlSz+hEU7ZGCK1jUXiXtRie9x01i4QiTKTy7uWgKbqvOfGGOxGRKUqGgtkTyPdkmPniWGlltDbl9UgrsFsmZisYhlrQJe+uYhRStIFglQsVFg2ozcGhUJC581MuUkrWsslKWc/IM5KjQAEnWOz9lOzycBhilwqaremKDsSBQB65Uh2e5KiwdhQkNpM+fJAEw/zCR99ICZwHFUsMlfVGU8EmGMjGy1pK0qBSPa0KWqQoGqSOBAMCSRuObmpMVbtNjSjCqILLnnKki+XXwygDxhRykbY2gMRPmzDUEnK9gC4U/AEUc8ukK5qwlw4fRyQSQFZUkkud0s+UAEdYIwKeDhipJLZScrUYgFiXcM5zXo8RYxWYuEvTeYDdbMpmetnfUC5d4YBEtBIat7eySfZFGsxtQ9bRrMceyUliQCkHK1DQm4ceDgxuEMqoIsRqSosq+pKSqw6h2BHyK/SS5sVa3JNgDlGlTACaS10ICVWJN25ORRT5iwZ62jSeWUHDKSBVmIBtyAL1rwguZNKJjZnI/CGyXcEgbrKAuxHQh/O6KnoqxIBIJeWlIdVeRUSlr0tGMDS0qYscpSdXzIFTUNpS/Q0tKQkmoJIYhiKsSyTRjcKpxDvcGTpKcmZi4sqgGWtFEBhlDAsTVSbuSR05SoPUDNmYcEupI3i6czMWskHlACD/AOHk1Aoaiq4yNc5FO4dtWm150mN5UjIJhur+H2GKCUTJk1WZGVgwKcgJNtVEgdIrPaLYJlSiUpKQFsQb0BqdI6TP7U4xQyiYlIKQCciatQaekJdoS5k2WpCl5swJqBRWhjw59fDWqZ9TH9kTWNqVX4/7SKR2U2YmcmbmplKAObm0WXaPZTDIlZkqdSllLEMycpOYk0vSIezuIXhJWRIQ5eYsqDsTRIfyiTae0VzlBSjpQMAwAYlhY8P2jqxt5Ztrg4s2P7LiipfJ71S/Un2htUTMKnCpKhuhKin73IPRuJ6wmw6EoSQBlHC9hSvnGmYCwHS97ekTplglj7Wr/mcuz00jpx4YwWx5uTNKXJuKijBzrzJ+Q8/MXaIooPo4a/APz+cEzg7PoDrq+jFuD61F7wFiU0qaOT0sRbprDsnEk2bJTlyqYWD9aGmt/q0CbbX9gUg09k8SdHJryPhyg/BZWq+a7DUi9RZ61sG5QD2mmPKu5KgPAVFWc3IrUZRyh47InPeREBmmTFXdZrDnErySECxJfiPqtoFl4FKZcoKIQqYp1LIzBIJAzZdWcmgctE8yX3kgEHelqyqyk5FMWzZbB6aOYaKpCydtnUP4fdmpmHlCaUhM2akFSjVSEFilA4aE8T0EW9eHOU1JJp/df3PFN/hR2mM1H8pNLrlpeUT99AAdL8UuG/KfymOhLFILEQFjqS8oupkDxufBIJ8I5x24xoXiRKS+WQMrAEkqOV7C7qQANSIvu08aJfeTlezIQT1WoAt5ZAP1mORS1ZipSt5alZ8wIeyDQjWiehgDE8tXdMn2QoZlaHj967lVuAOtBHLlPmCFZSksmoqUMwyswA3B0JpSJQFJyKYgsV71aEswcOpy40djZ2iGdLIAKWorKwL0JAIZ6UfQW6QQAc1LgpmEgumn3sxKgXzagVqXPFogY5RVIFwKtRgsFbFR9p8tBvPXWXKDuUVmUSSSfZSAHLG5qXu/F4lxMrdKQQFVUXbK2UU6VNxUcaxjHiMoUUgMXoQwLJqjU3JALWGa1o2DvvaaEEAOHOtfZNDqQaxvLJVRRcBtWdKSkWToSzg16NEklAQWSSapFuOZszOGcksankzpxhfOm5lIcBSKpIKS+rBzQFjR1M7kPWJxJA3CAV0JNTfeYUdVS3LwMSSXUlJKRryzEEMSogOXD04u5q8uHkKASWargHLRNCoFwEuJeU1FXBqQwxiQow/3pq833txJrrV611jIGlJ3RuqNBV1RkEx5Knq7wh6QWZha8ZGR8flS1H6dHgRg7839Q9weI8Up1q/ptQB3oALDkI9jI+i6T90j4n9rP/FMilhgo6gFvP8AcxvnISG/L8/UmMjI6TzGaYpLJHn/ANXyEaZBkNLv/wBkZGQrHXBrJSApVBQHTmOPWF21KzJD1cuebGkZGQ8fiTl8hxtw7yRwDDkIJwYb+a6P4kJUfeonxjIyKElyBdnsUuXi8MpCsqhOlMR+ZQSfNJI6Ex9KzbeMZGQAlE7bH/28fnmqzc3Mwn3gRTJCvs/7xYUACiAODNpGRkZBZrKmk53ruqNQLgL+IB8IG2lOUC2Ys6BUvQmoroXNLVPGMjIwCPC7qKaZWGgbKbGlxEczErTKBSoj/wDKT8B5RkZGMSf7sK1EuaQejt1j2QAtKQoAjMRYWdHD9SvoCMjIKMEN9hnrmASoFy4Jyu3CIJBzLU7e0oUAF+8e1/YTXlHkZACQrmqJLqV/cr5x5GRkYU//2Q=='),),
                    ),
                  ),
                  Text(
                    'David Beckham',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'DavidBeckham@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home', style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.explore),
            title: const Text('Explore', style: TextStyle(fontSize: 18),
            ),
            
          ),
  
          ListTile(
            leading: Icon(Icons.hotel),
            title: const Text('hotel', style: TextStyle(fontSize: 18),
            ),
          ),
  
          ListTile(
            leading: Icon(Icons.room_service),
            title: const Text('Room and services', style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 0.5,
          ),
          
          ListTile(
            leading: Icon(Icons.info),
            title: const Text('About Us', style: TextStyle(fontSize: 18),
            ),
            onTap:() {
              Navigator.of(context).pushNamed(AboutUs.routeName);
              }        ),
  
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings', style: TextStyle(fontSize: 18),
            ),
          ),
  
          ListTile(
              leading: Icon(Icons.arrow_back),
              title: const Text('Sign Out', style: TextStyle(fontSize: 18),
              ),
            onTap: (){
              Navigator.of(context).pushNamed(LoginPage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: const Text('Create new Account', style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(Registrationform.routeName);
            },
          ),
        ],
      )
    );
  }
}
